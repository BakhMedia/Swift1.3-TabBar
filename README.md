# TabBar
### Урок 3.

В этом уроке рассмотрим популярный в 2018 компонент: **Tab Bar Controller**. Его используют и **Instagram** и **Vkontakte** и многие другие известные приложения. Выглядит он как несколько кнопок-«закладок» внизу экрана, при нажатии на которые мы переходим на на разные экраны, к примеру «Новости», «Диалоги», «Поиск» или «Настройки».
Давайте добавим нашему приложению эти кнопочки наиболее простым способом.
Погнали!

1. Запускаем **Xcode** и давайте на этот раз откроем наш проект с [предыдущего урока](https://github.com/BakhMedia/Swift1.2-IfElseSwitchStatusBar).
2. Давайте сделаем внизу 4 «закладки»: Лента, Информация, Чат и Настройки. Так как с прошлого урока у нас на текущем экране есть переключатель «**Ночного режима**», то давайте сделаем так что наш текущий экран будет экраном «Настройки», но обо всем по порядку.

![Image1](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/1.gif "Image1")

3. Так как этот компонент создает сразу 3 экрана в нашем **storyboard**, то для удобства нажмем «**Zoom out**» пару раз чтоб получить приближение 50% и скролльнем чуть-чуть влево, чтобы у нас появилось свободное место рядом с нашим экраном. Далее находим компонент **Tab Bar Controller** и тащим его на свободное место. В итоге мы видим созданы 3 экрана. 1 - экран сам контроллер, он выглядит серым и внизу у него 2 кнопки: **Item1** и **Item2**. Другие 2 экрана добавились автоматом при создании **Tab Bar**. Нам же нужно сделать 4 кнопки и 4 экрана.

![Image2](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/2.gif "Image2")

4. Сейчас, если мы запустим наше приложение, то изменений мы не заметим, так как наши новые экраны пока никак не задействованы и по-прежнему открывается экран с переключателем. Это потому что он является **Initial View Controller** и слева от него можно заметить стрелку указывающую на него. Нам нужно чтобы эта стрелка указывала на наш **Tab Bar Controller** (серый экран). Для этого выберем наш экран с «**Ночным режимом**» и найдем в **Attrubutes Inspector** галочку **Is Initial View Controller**, снимем её. Мы увидим что стрелка слева у самого экрана пропала. Затем выберем наш **Tab Bar Controller**, найдём этот же параметр у него и поставим эту галочку ему. Стрелка слева у нашего серого экрана появилась, значит всё сделано правильно.

![Image3](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/3.gif "Image3")

5. Мы видим, что на нашем **Tab bar**\`e две иконки внизу, а нам надо 4 (**Лента**, **Информация**, **Чат** и **Настройки**), причем настройками станет наш экран с «**Ночным режимом**». Создадим новый экран, для этого найдем компонент **View Controller** и перетащим его на свободное место в нашем **storyboard**\`e. Затем «привяжем» наш новый экран к **Tab Bar**\`y. Выберем новый экран кликнув на его заголовок, верхнюю его часть над ним. Затем в **Connections Inspector** найдем пункт **Relationship** и зажав (+) перетащим его на наш **Tab Bar**, появится маленькая кнопка «**view controllers**», нажимаем её. Видим, что на нижней панельке иконки стало три и появилось полоска обозначающая связь этих экранов.

![Image4](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/4.gif "Image4")

6. Давайте установим такую же связь для нашего будущего экрана «Настроек». Для эстетики переместим наш экран правее, чтоб как бы все экраны, которые относятся к **Tab Bar**\`y были справа от него. Кликнем на часть экрана над ним, далее снова в **Connections Inspector**\`e нажмём (+) около пункта **Relationship** и перетащим его в наш экран **Tab Bar Controller**, жмём **view controllers**. Видим появилась 4-я иконка и новая связь с нашим экраном.

![Image5](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/5.gif "Image5")

7. Сейчас наши кнопки называются **Item1**, **Item2**, **Item** и еще один **Item**. Выбираем кнопку внизу экрана **Item1** на одном из наших экранов и меняем на нужное название. Обращаем внимание на порядок экранов. Наш первый экран - это Лента. Выбираем кнопку, нажимаем **Attributes Inspector** в поле **Title** вместо **Item1** вписываем **Лента**. Снова выбираем кнопку внизу экрана **Item2** и вместо **Item2** — Информация. На третьем экране — **Чат**. На нашем экране с «**Ночным режимом**» пишем **Настройки**.

![Image6](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/6.gif "Image6")

8. Теперь нам надо добавить иконки в наши кнопки, а то квадраты как-то не смотрятся 😅. Для этого найдем 4 нужные нам иконки, мы нашли их просто в google. Обращаем Ваше внимание на то что иконки надо брать с прозрачным фоном, а так же сами изображения желательно взять одного цвета к примеру серого, просто потому что популярные приложения делают так же, почему бы нам не взять с них пример?😉 Ну и при клике на наш **Tab Bar** активное окно будет автоматически менять цвет с серого на синий, что смотрится довольно органично. Откроем папку с иконками рядом с **Xcode** и просто перетащим их в наш проект в структуру файлов, вставить их можно в любое место в проекте, где появится синий индикатор (структуру мы рассмотрим позднее). При добавлении появится диалог где мы поставим галочку «**Copy items if needed**» - она нужна чтоб **Xcode** скопировал файлы в проект. Так удостоверимся что стоит галочка около названия нашего приложения в разделе «**Add to targets**». Теперь проставим эти изображения нашим кнопкам. Просто прокликаем наши кнопки и в поле Image выберем нужные картинки, а именно:
- Лента — feed.png
- Информация — info.png
- Чат — chat.png
- Настройки — settings.png

![Image7](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/7.gif "Image7")

9. Теперь давайте разместим на каждый экран по **Label** с определенными надписями. Приблизим интересующий нас экран, к примеру экран **Лента**. Найдем компонент **Label** и разместим на этом экране по центру при помощи инструмента **Align** (как это делать мы учились в прошлом уроке). В сам **Label** зададим текст «**Здесь будет лента**». И так на каждом экране: для экрана **Чат** напишем «**Здесь будет чат**», для экрана **Информация** напишем «**Здесь будет информация**».

![Image8](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/8.gif "Image8")

10. Теперь приведем внешний вид экрана «Настроек» в порядок. А именно надпись должна быть слева, переключатель — справа. Порядок действий:
- Выберем **Label**, изменим его текст на «**Ночной режим**»;
- Позицию текста смени с «**по центру**» на «**слева**»;
- Выбираем **Switch**, появляются синие линии, обозначающие **Constraints**. Выбираем ту линию, которая между нашим **Label** и **Switch**. **First item** ставим **Center Y**, **Second Item** ставим **Center Y** и **Constant** ставим 0.
- Теперь выбираем вертикальную линию по центру. **First item** ставим **Trailing**, **Second Item** ставим **Trailing** и **Constant** ставим -8. **Trailing** - это грубо говоря правый край выбранного компонента. То есть мы выбираем правый край экрана и правый край Switch. Минус 8 мы сделали чтоб был маленький зазор между краем экрана и нашим активным компонентом, чуть-чуть эстетики не повредит😄

![Image9](https://raw.githubusercontent.com/BakhMedia/Swift1.3-TabBar/master/images/9.gif "Image9")

11. Запустим приложение, посмотри что получилось. Переходим между экранами. Правда настройка «**Ночного режима**» работает только на самом экране настроек. Как с этим работать будем рассматривать в одном из следующих уроков.


**Сейчас попробуйте по памяти все повторить, желательно 2-3 раза.**


🙃**Домашнее задание**: На экране настроек у нас надпись красным цветом. Попробуйте самостоятельно сделать цвет текста черным. **ВАЖНО**: чтоб при выключении ночного режима текст оставался черным, а не становился вновь красным, то есть просто поменять цвет текста в **Attrubutes Inspector** будет не достаточно😉.






