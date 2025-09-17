import { Component } from '@angular/core';

//esse é uma clase de componemte pois possue um decoretor  @Component
@Component({
  selector: 'app-home',
  imports: [],
  templateUrl: './home.html',
  styleUrl: './home.css'
})
export class Home {
  name = "Rafael";
  idButton = "fsgsfa"
  deveMostarNome = false;
  list_Itens = [1,2,3,4]

  meuBooleano = false;

  atualizaBooleano(valor : boolean) {
    this.meuBooleano = valor;
  }

  submit(event: any) {
    console.log(event)
  }
}
