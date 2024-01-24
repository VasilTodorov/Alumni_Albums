/*Logout mess*/

function showMessage() {
      alert('Сигурни ли сте, че искате да илезете от профила си?'); 
}


/*Downtimer, event-page*/
 const countDownDate = new Date("Feb 9, 2024 00:00:00").getTime();

    const countdown = setInterval(function() {
      const now = new Date().getTime();
      const distance = countDownDate - now;

      const days = Math.floor(distance / (1000 * 60 * 60 * 24));
      const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      const seconds = Math.floor((distance % (1000 * 60)) / 1000);

      // Display the result
      document.querySelector('.days').innerHTML = days < 10 ? '0' + days : days;
      document.querySelector('.hours').innerHTML = hours < 10 ? '0' + hours : hours;
      document.querySelector('.minutes').innerHTML = minutes < 10 ? '0' + minutes : minutes;
      document.querySelector('.seconds').innerHTML = seconds < 10 ? '0' + seconds : seconds;

      if (distance < 0) {
        clearInterval(countdown);
        document.querySelector('.countdown-timer').innerHTML = "EXPIRED";
      }
}, 1000);

/*To hide the text, event-page*/

let lastScrollPosition = window.scrollY;

    window.addEventListener('scroll', function () {
      const currentScrollPosition = window.scrollY;

      if (currentScrollPosition > lastScrollPosition) {

        const fadeOutText = document.getElementById('scroll-counter');
        fadeOutText.classList.add('hidden');
      } else {

        const fadeOutText = document.getElementById('scroll-counter');
        fadeOutText.classList.remove('hidden');
      }

      lastScrollPosition = currentScrollPosition;
});

/*Home page popup*/
window.onload = function() {
            setTimeout(showPopupHome, 2000);
        };

        function showPopupHome() {
            document.getElementById('popup').style.display = 'block';
        }

        function closePopupHome() {
            document.getElementById('popup').style.display = 'none';
}


/*popup with "write a mess"*/

function showMessageWrite() {
    document.getElementById('messagePopup').style.display = 'block';
}

function sendMessage() {
    var message = document.getElementById('messageTextarea').value;
    alert('Изпратено съобщение: ' + message);

    closePopup();
}

function closePopup() {
    document.getElementById('messagePopup').style.display = 'none';
}


/* Change your pass*/

function showEditPopup() {
    document.getElementById('editPopup').style.display = 'block';
}

function saveChanges() {
    var newUsername = document.getElementById('newUsername').value;
    var newPassword = document.getElementById('newPassword').value;

    closeEditPopup();
}

function closeEditPopup() {
    document.getElementById('editPopup').style.display = 'none';
}