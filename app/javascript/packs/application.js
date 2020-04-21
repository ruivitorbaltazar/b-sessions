import 'core-js/stable'
import 'regenerator-runtime/runtime'

import { buttonAddTrainee } from '../components/button_add_trainee';
import { buttonSwitchAuth } from '../components/button_switch_auth';
import { buttonCloseAlert } from '../components/button_close_alert';

// BUTTON ADD TRAINEE
const addTrainee = document.querySelector('.show-add-trainee');
if (addTrainee) {
  buttonAddTrainee();
};

// BUTTON SWITCH LANDING AUTH
const switchAuth = document.querySelector('.login-section');
if (switchAuth) {
  buttonSwitchAuth();
};

// BUTTON CLOSE ALERT
const alertWindow = document.querySelector('.alert');
if (alertWindow) {
  buttonCloseAlert();
};
