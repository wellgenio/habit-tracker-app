# Habit Tracker App
---

<p align="center"><img src="https://img.shields.io/badge/Flutter-3.16.1-00ADD8?style=for-the-badge&logo=flutter" alt="go version" />&nbsp;&nbsp;<img src="https://img.shields.io/badge/license-MIT-blue?style=for-the-badge" alt="license" />&nbsp;&nbsp;</p>


> Motivação: Projeto pessoal para aprender mais sobre desenvolvimendo de UIs modernas e intuitivas em [Flutter](https://flutter.dev/) de fornecendo uma experiência simples, intensa e relevante.

---

Bem-vindo ao <strong>Habit Tracker</strong>, o seu companheiro definitivo na jornada de estabelecer hábitos e atingir metas! Este inovador aplicativo foi projetado para capacitá-lo a criar, ajustar e monitorar seus hábitos de maneira eficaz. Equipado com <strong>um intuitivo mapa de calor</strong>, o Habit Tracker oferece uma análise visual do seu compromisso, impulsionando sua motivação e guiando-o rumo ao sucesso! 🚀

## Imagens do aplicativo

<table cellspacing="0" cellpadding="0">
   <tr>
           <td>
                   <b>Dark mode</b>
           </td>
           <td>
                   <b>Light mode</b>
           </td>
   </tr>
        <tr>
    <td class="first">
            <img src="https://github.com/wellgenio/habit-tracker-app/blob/main/assets/images/dark_mode.png" height= "400px">
    </td>
    <td class="second">
            </br>
            <img src="https://github.com/wellgenio/habit-tracker-app/blob/main/assets/images/light_mode.png" height= "400px">
    </td>
  </tr>
</table>

## Base da Aplicação

Vamos usar algumas dependência para agilizar as coisas:

- [provider](https://pub.dev/packages/provider) (v6.1.1)
- [isar](https://pub.dev/packages/isar) Banco de dados local (v3.1.0)
- [flutter_slidable](https://pub.dev/packages/flutter_slidable) (v3.0.1)
- [flutter_heatmap_calendar](https://pub.dev/packages/flutter_heatmap_calendar) (v1.0.5)

Para saber mais acesse a documentação.


## Estrutura do projeto

```sh
/lib
│   app_widget.dart
│   main.dart
├───/components
│       drawer_widget.dart
│       habit_tile_widget.dart
│       heat_map_widget.dart
├───/database
│       habit_database.dart
├───/models
│       app_settings.dart
|       habit.dart
├───/pages
│       home_page.dart
├───/theme
│       dark_mode.dart
|       light_mode.dart
└───/utils
        habit_utils.dart
```

## License

Copyright 2023 Wellington Dos Santos

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
