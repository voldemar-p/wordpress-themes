import $ from 'jquery';

class Like {
    // KIRJELDUS
    constructor() {
        this.events();
    }
    // SYNDMUS
    events() {
        $(".like-box").on("click", this.our_click_dispatcher.bind(this));
    }

    // MEETOD
    our_click_dispatcher(e) {
        var current_likebox = $(e.target).closest('.like-box');
        // Leia pealevajutatud elemendi l2him vanemelement nimega .like-box
        if (current_likebox.attr('data-exists') == 'yes') {
        // Kui like boxis on midagi juba kasutaja poolt lisatud
            this.delete_like(current_likebox);
        } else {
            this.create_like(current_likebox);
        }
    }

    create_like(current_likebox) {
        $.ajax({
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-WP-Nonce', university_data.nonce);
            },
            url: university_data.root_url + '/wp-json/university/v1/manageLike',
            type: 'POST',
            data: {'professor_id': current_likebox.data('professor')},
            // 'professor_id': on sama, mis '/wp-json/university/v1/manageLike?professor_id='
            // V6tab single-professor.php-st data-professori v22rtuse.
            success: (response) => {
                current_likebox.attr('data-exists', 'yes');
                var likeCount = parseInt(current_likebox.find(".like-count").html(), 10);
                // Otsime likede lugeja v22rtuse ning muudame selle numbriks,
                likeCount++;
                // lisame yhe juurde
                current_likebox.find(".like-count").html(likeCount);
                // ning v2ljastame html-ina.
                current_likebox.attr('data-like', response)
                console.log(response);
            },
            error: (response) => {
                console.log(response);
            }
        });
    }

    delete_like(current_likebox) {
        $.ajax({
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-WP-Nonce', university_data.nonce);
            },
            url: university_data.root_url + '/wp-json/university/v1/manageLike',
            data: {'like': current_likebox.attr('data-like')},
            type: 'DELETE',
            success: (response) => {
                current_likebox.attr('data-exists', 'no');
                var likeCount = parseInt(current_likebox.find(".like-count").html(), 10);
                likeCount--;
                current_likebox.find(".like-count").html(likeCount);
                current_likebox.attr('data-like', '')
                console.log(response);
            },
            error: (response) => {
                console.log(response);
            }
        });
    }
}

export default Like;