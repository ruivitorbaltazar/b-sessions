const buttonSwitchAuth = () => {
  const loginList = document.querySelector('.login-section');
  const signupButton = document.querySelector('.show-sign-up');

  const signupList = document.querySelector('.signup-section');
  const loginButton = document.querySelector('.show-log-in');

  signupButton.addEventListener('click', event => {
    signupList.classList.remove('d-none');
    loginList.classList.add('d-none');
  });

  loginButton.addEventListener('click', event => {
    loginList.classList.remove('d-none');
    signupList.classList.add('d-none');
  });
}

export { buttonSwitchAuth };
