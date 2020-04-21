const buttonCloseAlert = () => {
  const alert = document.querySelector('.alert');
  const button = document.querySelector('.close');

  button.addEventListener('click', event => {
    alert.classList.add('d-none');
  });
};

export { buttonCloseAlert };
