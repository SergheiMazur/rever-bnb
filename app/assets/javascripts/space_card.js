function toggleEffect () {
  var target = document.querySelector (this.dataset.target);
      target.dataset.effect = this.dataset.effect;

  for (var i= 0; i < demoButtons.length; i++) {
    demoButtons[i].classList.remove ('active');
  }

  toggleActive.call (this);
}

// Toggle "active" class
function toggleActive () {
  this.classList.toggle ('active');
}
