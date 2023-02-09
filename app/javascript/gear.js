window.addEventListener('DOMContentLoaded',function(){
//window.onload = function () {
  var nav = document.getElementById('nav-wrapper');
  var hamburger = document.getElementById('js-gear');
  var blackBg = document.getElementById('js-black-bg');
  var backGroundClose = document.getElementById('black-bg-close');

  hamburger.addEventListener('click', function () {
      nav.classList.toggle('open');
  });
  blackBg.addEventListener('click', function () {
      nav.classList.remove('open');
  });
  backGroundClose.addEventListener('click', function () {
    nav.classList.remove('open');
  });
});
