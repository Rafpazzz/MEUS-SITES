import { bootstrapApplication } from '@angular/platform-browser';
import { appConfig } from './app/app.config';
import { App } from './app/app';

// arquivo que é o entry point do meu projeto

bootstrapApplication(App, appConfig)
  .catch((err) => console.error(err));
