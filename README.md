# Моделирование работы трёхантенного фазового пеленгатора <br> (Simulation of the operation of a three-antenna phase direction finder)

В репозитории представлено моделирование трёхантенного фазового пеленгатора, в основе которого
используется цифровой фазометр. Для реализации модели использовалась среда программирования MATLAB Simulink.

Работа выполнялась для изучения работы радиотехнической системы, получения навыков работы в Simulink и анализа
влияния характеристик цели на точность измерения углов азимута и возвышения (места)

Также в этом репозитории представлен пример создания моделей в Simulink с помощью скриптов, что позволяет
быстро менять в моделях число элементов, не прибегая к ручному дублированию блоков.

## Каталоги в этом репозитории

>**data**: папка, содержащая данные результатов моделирования <br>
>**demos**: папка, содержащая демонстрацию работы модели <br>
>**direction_finder**: папка, содержащая модель фазового пеленгатора <br>
>**dynamic_system**: папка, содержащая скрипты инициализации и удаления примера модели
> с изменяемым числом элементов

## Запуск

Запуск осуществляется скриптом `RunDirectionFinder`. Все задаваемые параметры модели указаны и описаны
внутри скрипта.

## Описание модели

Модель состоит...

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/Model.png" width="1000"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/Figure.drawio.png" width="400"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/ModelPMD.png" width="600"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/11.png" width="400"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/22.png" width="400"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/33.png" width="400"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/12.png" width="400"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/AzimuthError.png" width="400"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/ElevationError.png" width="400"/>
</figure>

<figure>
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/TotalError.png" width="400"/>
</figure>

<p float="left">
<img src="https://github.com/Stergrim/Simulation-of-the-operation-of-a-three-antenna-phase-direction-finder/blob/main/demos/GiF2.gif" width="400"/>
</p>

## Замечания

Единственным недостатком...

