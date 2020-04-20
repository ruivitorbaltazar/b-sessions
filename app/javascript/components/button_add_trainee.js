const buttonAddTrainee = () => {
  const traineeButton = document.querySelector('.show-add-trainee');
  const traineeForm = document.querySelector('.form-add-trainee');
  const traineeList = document.querySelector('.list-trainees');

  traineeButton.addEventListener('click', event => {
    traineeButton.classList.toggle('hide-add-trainee');
    traineeForm.classList.toggle('d-none');
    traineeList.classList.toggle('d-none');
  });
}

export { buttonAddTrainee };
