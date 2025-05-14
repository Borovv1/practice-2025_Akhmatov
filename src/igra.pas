uses
  CRT;

procedure ShowLoading;
var
  i: Integer;
begin
  for i := 1 to 5 do
  begin
    Delay(500);
    Write('.');
    Delay(500);
    GotoXY(WhereX - 1, WhereY);
    Write(' '); 
    GotoXY(WhereX - 1, WhereY);
  end;
end;


procedure Level1(var trueall,falseall: Integer);
var
  z, n, m, s, trueo, falseo, skok, operation: Integer;
    skokStr :string;
  skokValid: Boolean;

begin
  ClrScr;
  Writeln('                                 1 - levl. Сложение и вычитание чисел от 1 до 20            ');
  Writeln(' ');
    repeat
    Write('                      Перед запуском 1-го levla необходимо выбрать количество примеров: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, skok);
  until skokValid;
  ClrScr;
  TextColor(LightGreen);
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Write('                                              Генерация примеров..');
  HideCursor;
  ShowLoading;
  ClrScr;
  TextColor(White);
  trueo := 0;
  falseo := 0;
  ShowCursor;
  for z := 1 to skok do
  begin
    operation := Random(2);
    
    if operation = 0 then
    begin
      repeat
        n := Random(20) + 1;
        m := Random(20) + 1;
        s := n + m;
      until s <= 20;
      
      WriteLn('Задача ', z, ' (1-й уровень)');
      repeat
    Write(n, ' + ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
      
      if s = n + m then
      begin
        Writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
        repeat
    Write(n, ' + ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
        
        if s = n + m then
        begin
          Writeln('Молодец! Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          WriteLn('Увы, ошибочка. Вот ответ: ', n + m);
          falseo := falseo + 1;
        end;
      end;
    end
    else
    begin
      repeat
        n := Random(20) + 1;
        m := Random(20) + 1;
        s := n - m;
      until s >= 0;
      
      WriteLn('Задача ', z, ' (1-й уровень)');
      repeat
    Write(n, ' - ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
      
      if s = n - m then
      begin
        Writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
        repeat
    Write(n, ' - ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
        
        if s = n - m then
        begin
          Writeln('Молодец! Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          WriteLn('Увы, ошибочка. Вот ответ: ', n - m);
          falseo := falseo + 1;
        end;
      end;
    end;
  end;
  
  
  Delay(1000);
  
  if z = skok then
  begin
    ClrScr;
    HideCursor;
    TextColor(Cyan);
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln('                                 Поздравляю, вы прошли 1 уровень');
    writeln('                    ');
    TextColor(Red);
    writeln('                                 Сколько ошибок: ', falseo);
    writeln('                    ');
    TextColor(Green);
    writeln('                                 Сколько правильных ответов: ', trueo);
    writeln('                    ');
    TextColor(Blue);
    writeln('                                 Нажмите любую клавишу, чтобы продолжить...');
    TextColor(White);
    ReadKey;
    ShowCursor;
  end;
  trueall := trueall + trueo;
  falseall := falseall + falseo;
end;

procedure text2;
begin
  ClrScr;
  TextColor(Black);
  Writeln('+---------------------------------------------------------------------------------------------------------------------+');
  Writeln('|  Привет друг! Меня зовут Алихан, я создатель этого тренажера. Надеюсь он поможет тебе развить математические навыки |');
  Writeln('|  и логическое мышление. Я предоставлю тебе интересные и разнообразные математичесике задачи, соответствующие твоему |');
  Writeln('|  уровню обучения                                                                                                    |');
  Writeln('|                                               Цель игры.                                                            |');
  Writeln('|  Целью игры является решение математических задач различной сложности на каждом уровне, чтобы продвигаться вперед   |');
  Writeln('|  и завершить все уровни.                                                                                            |');
  Writeln('|                                             Описание игры!                                                          |');
  Writeln('| "Математический Тренажер для начальных классов" - это игра,предназначенная для детей школьного возраста, чтобы      |');
  Writeln('|  помочь им развить навыки решения математических задач и повысить их математическую эрудицию. Игра состоит из       |');
  Writeln('|  4 уровней,которые соответствуют задачам для 1-го, 2-го, 3-го и 4-го классов соответственно                         |');
  Writeln('|                                            Игровой процесс                                                          |');
  Writeln('|  Перед началом, игрок может выбрать с какого уровня ему начинать, а также сколько задач он хочет. Каждый уровень    |');
  Writeln('|  содержит столько математических задач,сколько выбрал игрок. Задачи соответствуют уровню  сложности, типичному для  |');
  Writeln('|  соответствующего класса. На каждом уровне игроку предлагается поочередно решать задачи. После выбора уровня, на    |');
  Writeln('|  экране появляется задача с просьбой решить ее. Игрок должен использовать свои знания и навыки математики, чтобы    |');
  Writeln('|  найти правильный ответ. Ответ должен быть введен с клавиатуры.После ввода ответа, игра проверяет его правильность. |');
  Writeln('|  Если ответ правильный,игрок переходит к следующей задаче на том же уровне. Если ответ неправильный, игра           |');
  Writeln('|  предоставляет обратную связь и позволяет игроку попробовать снова. По мере прохождения каждого уровня игра         |');
  Writeln('|  становится сложнее, и задачи требуют более глубокого понимания математических концепций. Цель состоит в том, чтобы |');
  Writeln('|  успешно решить все задачи на каждом уровне и завершить игру                                                        |');
  Writeln('|                                               Интерфейс игры                                                        |');
  Writeln('|  Игра использует простой текстовый интерфейс. Задачи и инструкции выводятся на экран, а игрок вводит свои ответы с  |');
  Writeln('|  помощью клавиатуры. Используется библиотека CRT для осуществления простого управления экраном, очистки и вывода    |');
  Writeln('|  текста. Игровой процесс продолжается до тех пор, пока игрок не завершит все уровни или не прервет игру.            |');
  Writeln('+---------------------------------------------------------------------------------------------------------------------+');
  Writeln(' ');
end;


procedure text1;
begin
  HideCursor;
  ClrScr;
  TextColor(Black);
  Writeln('  ');
  Writeln('  ');
  Writeln('  ');
  Writeln('  ');
  Writeln('  ');
  Writeln('  ');
  Writeln('                                      +-----------------------------------------+');
  Writeln('                                      |                                         |');
  Writeln('                                      |         Добро пожаловать в игру         |');
  Writeln('                                      |    "Тренажер для начальных классов"     |');
  Writeln('                                      |                                         |');
  Writeln('                                      |     Развивайте свои математические      |');
  Writeln('                                      |       навыки и решайте интересные       |');
  Writeln('                                      |        задачи на каждом уровне!         |');
  Writeln('                                      |                                         |');
  Writeln('                                      |      Уровень 1 - Задачи для 1 класса    |');
  Writeln('                                      |      Уровень 2 - Задачи для 2 класса    |');
  Writeln('                                      |      Уровень 3 - Задачи для 3 класса    |');
  Writeln('                                      |      Уровень 4 - Задачи для 4 класса    |');
  Writeln('                                      |                                         |');
  Writeln('                                      |       Нажмите любую клавишу, чтобы      |');
  Writeln('                                      |               продолжить...             |');
  Writeln('                                      |                                         |');
  Writeln('                                      +-----------------------------------------+');
  ReadKey;
end;

procedure menu;
begin
  ClrScr;
  HideCursor;
  TextColor(Red);
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln(' ');
  Writeln('                                 +---------------------------------------------+');
  Writeln('                                 |                    Меню                     |');
  Writeln('                                 |  Если желаешь прочитать про игру нажми "5"  |');
  Writeln('                                 |  Если хочешь начать играть, нажми "Enter"   |');
  Writeln('                                 +---------------------------------------------+');
  TextColor(White);
end;

procedure Level2(var trueall,falseall: Integer);
var
  i, n, m, s, trueo, falseo, skok, operation: Integer;
    skokStr :string;
  skokValid: Boolean;

begin
  ClrScr;
  Writeln('                                      2 - levl. Умножение и деление чисел от -10 до 100            ');
  Writeln(' ');
repeat
    Write('                                Перед запуском 2-го levla необходимо выбрать количество примеров: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, skok);
  until skokValid;
  ClrScr;
TextColor(LightGreen);
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Write('                                              Генерация примеров..');
  HideCursor;
  ShowLoading;
  ClrScr;
  TextColor(White);
  trueo := 0;
  falseo := 0;
  ShowCursor;
  for i := 1 to skok do
  begin
    operation := Random(4);
    
    if operation = 0 then
    begin
      repeat
        n := Random(100) + 1;
        m := Random(100) + 1;
        s := n * m;
      until s <= 100;
      WriteLn('Задача ', i, ' (2-й уровень)');
      repeat
    Write(n, ' * ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
      
      if s = n * m then
      begin
        Writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
        repeat
    Write(n, ' * ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
        if s = n * m then
        begin
          Writeln('Молодец! Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          WriteLn('Увы ошибочка.Вот ответ: ', n * m);
          falseo := falseo + 1;
        end;
      end;
    end;
    if operation = 1 then 
    begin
      repeat
        n := Random(100) + 1;
        m := Random(100) + 1;
        s := n div m;
      until (s >= 0) and (n mod m = 0);
      WriteLn('Задача ', i, ' (2-й уровень)');
      repeat
    Write(n, ' : ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
      
      if s = n / m then
      begin
        Writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
        repeat
    Write(n, ' : ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
        if s = n / m then
        begin
          Writeln('Молодец! Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          WriteLn('Увы ошибочка.Вот ответ: ', n / m);
          falseo := falseo + 1;
        end;
      end;
    end;
    // +++++++++
    if operation = 2 then
    begin
      repeat
        n := Random(100) + 1;
        m := Random(100) + 1;
        s := n + m;
      until s <= 100;
      WriteLn('Задача ', i, ' (2-й уровень)');
      repeat
    Write(n, ' + ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
      
      if s = n + m then
      begin
        Writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
        repeat
    Write(n, ' + ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
        if s = n + m then
        begin
          Writeln('Молодец! Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          WriteLn('Увы ошибочка.Вот ответ: ', n + m);
          falseo := falseo + 1;
        end;
      end;
    end;
    
    if operation = 3 then
    begin
      repeat
        n := Random(100) + 1;
        m := Random(100) + 1;
        s := n - m;
      until (s <= 100) and (s >= -10) ;
      WriteLn('Задача ', i, ' (2-й уровень)');
      repeat
    Write(n, ' - ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
      
      if s = n - m then
      begin
        Writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
        repeat
    Write(n, ' - ', m, ' = ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, s);
  until skokValid;
        if s = n - m then
        begin
          Writeln('Молодец! Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          WriteLn('Увы ошибочка.Вот ответ: ', n - m);
          falseo := falseo + 1;
        end;
      end;
    end;
    
    delay(1000);
    if i = skok then
    begin
    ClrScr;
    HideCursor;
    TextColor(Cyan);
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln('                                 Поздравляю, вы прошли 2 уровень');
    writeln('                    ');
    TextColor(Red);
    writeln('                                 Сколько ошибок: ', falseo);
    writeln('                    ');
    TextColor(Green);
    writeln('                                 Сколько правильных ответов: ', trueo);
    writeln('                    ');
    TextColor(Blue);
    writeln('                                 Нажмите любую клавишу, чтобы продолжить...');
    TextColor(White);
    ReadKey;
    ShowCursor;
    end;
  end;
  trueall := trueall + trueo;
  falseall := falseall + falseo;
end;

procedure Level3(var trueall,falseall: Integer);
var
  i, n, m, s, trueo, falseo, skok, nn, mm, d, operation: Integer;
  comparison: Char;
    skokStr :string;
  skokValid: Boolean;

begin
  ClrScr;
  Writeln('                                     3 - level. Сравнение двух чисел от -100 до 1000      ');
  Writeln(' ');
repeat
    Write('                                Перед запуском 3-го levla необходимо выбрать количество примеров: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, skok);
  until skokValid;
  ClrScr;
TextColor(LightGreen);
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Write('                                              Генерация примеров..');
  HideCursor;
  ShowLoading;
  ClrScr;
  TextColor(White);
  trueo := 0;
  falseo := 0;
  ShowCursor;
  //умножениеееееееееееееееееееееееееееееее  
  for i := 1 to skok do
  begin
    operation := Random(4);
    
    if operation = 0 then
    begin
      repeat
        n := Random(1000) + 1;
        m := Random(1000) + 1;
        nn := Random(1000) + 1;
        mm := Random(1000) + 1;
        s := n * nn;
        d := m * mm;
      until (s <= 1000) and (d <= 1000);
      
      WriteLn('Задача ', i, ' (3-й уровень)');
      Writeln(' ', n, '*', nn, '        ', m, '*', mm);
      Write('Введите символ сравнения (<, > или =): ');
      readln(comparison);
      
      if comparison = '<' then
      begin
        if s < d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
        else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          print('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '>' then
          begin
            if s > d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: =');
              Inc(falseo);
            end;
          end
          else 
          if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: >');
              Inc(falseo);
            end;
          end;
          if comparison = '<' then
          begin
            if s < d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s > d then ('>')
                  else ('='));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
           begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
      end
      
      
      
      
      
      
      else
      if comparison = '=' then
      begin
        if s = d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
          else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          print('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '>' then
          begin
            if s > d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: <');
              Inc(falseo);
            end;
          end
          else 
          if comparison = '<' then
          begin
            if s < d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: >');
              Inc(falseo);
            end;
          end;
          if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s > d then ('>')
                  else ('<'));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
      end
      
      
      
      
      
      
      else
      if comparison = '>' then
      begin
        if s > d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
              else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          write('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '<' then
          begin
            if s < d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: =');
              Inc(falseo);
            end;
          end
          else if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: <');
              Inc(falseo);
            end;
          end;
          if comparison = '>' then
          begin
            if s > d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                  else ('='));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
        
      end
      
      
      else
      begin
        writeln('Некорректно введен символ');
        print('Введите символ сравнения (<, > или =): ');
        readln(comparison);
        if comparison = '<' then
        begin
          if s < d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
          else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            print('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '>' then
            begin
              if s > d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                WriteLn('Увы ошибочка. Вот ответ: =');
                Inc(falseo);
              end;
            end
            else if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: >');
                Inc(falseo);
              end;
            end;
            if comparison = '<' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('>'));
                Inc(falseo);
              end;
            end;
          end;
        end
        else
        if comparison = '=' then
        begin
          if s = d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
          else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            print('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '>' then
            begin
              if s > d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                WriteLn('Увы ошибочка. Вот ответ: <');
                Inc(falseo);
              end;
            end
            else if comparison = '<' then
            begin
              if s < d then
                WriteLn('Молодец! Исправился')
              else
              begin
                writeln('Увы ошибочка. Вот ответ: >');
                Inc(falseo);
              end;
            end;
            if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('>'));
                Inc(falseo);
              end;
            end;
          end;
        end
            else
        if comparison = '>' then
        begin
          if s > d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
              else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            write('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '<' then
            begin
              if s < d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
                  else
              begin
                WriteLn('Увы ошибочка. Вот ответ: =');
                Inc(falseo);
              end;
            end
            else if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
                  else
              begin
                writeln('Увы ошибочка. Вот ответ: <');
                Inc(falseo);
              end;
            end;
            if comparison = '>' then
            begin
              if s > d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('='));
                Inc(falseo);
              end;
            end;
          end
        end
        else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
          begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
      end;
    end;
    
    // делить 
    if operation = 1 then
    begin
      repeat
        n := Random(1000) + 1;
        m := Random(1000) + 1;
        nn := Random(1000) + 1;
        mm := Random(1000) + 1;
        s := n div nn;
        d := m div mm;
      until (s >= 0) and (n mod nn = 0) and (m mod mm = 0);
      
      WriteLn('Задача ', i, ' (3-й уровень)');
      Writeln(' ', n, ':', nn, '        ', m, ':', mm);
      Write('Введите символ сравнения (<, > или =): ');
      readln(comparison);
      
      if comparison = '<' then
      begin
        if s < d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
        else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          print('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '>' then
          begin
            if s > d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: =');
              Inc(falseo);
            end;
          end
          else 
          if comparison = '=' then
          begin
            if s = d then
              WriteLn('Молодец! Исправился')
            else
            begin
              writeln('Увы ошибочка. Вот ответ: >');
              Inc(falseo);
            end;
          end;
          if comparison = '<' then
          begin
            if s < d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s > d then ('>')
                  else ('='));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
      end
      else
      if comparison = '=' then
      begin
        if s = d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
          else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          print('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '>' then
          begin
            if s > d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: <');
              Inc(falseo);
            end;
          end
          else 
          if comparison = '<' then
          begin
            if s < d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: >');
              Inc(falseo);
            end;
          end;
          if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s > d then ('>')
                  else ('<'));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
      end
      else
      if comparison = '>' then
      begin
        if s > d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
              else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          write('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '<' then
          begin
            if s < d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: =');
              Inc(falseo);
            end;
          end
          else if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: <');
              Inc(falseo);
            end;
          end;
          if comparison = '>' then
          begin
            if s > d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                  else ('='));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
        
      end
      else
      begin
        writeln('Некорректно введен символ');
        print('Введите символ сравнения (<, > или =): ');
        readln(comparison);
        if comparison = '<' then
        begin
          if s < d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
          else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            print('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '>' then
            begin
              if s > d then 
                WriteLn('Молодец! Исправился')
              else
              begin
                WriteLn('Увы ошибочка. Вот ответ: =');
                Inc(falseo);
              end;
            end
            else if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: >');
                Inc(falseo);
              end;
            end;
            if comparison = '<' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('>'));
                Inc(falseo);
              end;
            end;
          end;
        end
        else
        if comparison = '=' then
        begin
          if s = d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
          else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            print('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '>' then
            begin
              if s > d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                WriteLn('Увы ошибочка. Вот ответ: <');
                Inc(falseo);
              end;
            end
            else if comparison = '<' then
            begin
              if s < d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: >');
                Inc(falseo);
              end;
            end;
            if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('>'));
                Inc(falseo);
              end;
            end;
          end;
        end
            else
        if comparison = '>' then
        begin
          if s > d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
              else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            write('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '<' then
            begin
              if s < d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
                  else
              begin
                WriteLn('Увы ошибочка. Вот ответ: =');
                Inc(falseo);
              end;
            end
            else if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
                  else
              begin
                writeln('Увы ошибочка. Вот ответ: <');
                Inc(falseo);
              end;
            end;
            if comparison = '>' then
            begin
              if s > d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('='));
                Inc(falseo);
              end;
            end;
          end
        end
        else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
          begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
      end;
    end;
    
    
    // сложить
    if operation = 2 then
    begin
      repeat
        n := Random(1000) + 1;
        m := Random(1000) + 1;
        nn := Random(1000) + 1;
        mm := Random(1000) + 1;
        s := n + nn;
        d := m + mm;
      until (s >= -100) and (n + nn <= 1000) and (m + mm <= 1000) and (d >= -100);
      
      WriteLn('Задача ', i, ' (3-й уровень)');
      Writeln(' ', n, '+', nn, '        ', m, '+', mm);
      Write('Введите символ сравнения (<, > или =): ');
      readln(comparison);
      
      if comparison = '<' then
      begin
        if s < d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
        else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          print('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '>' then
          begin
            if s > d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: =');
              Inc(falseo);
            end;
          end
          else 
          if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: >');
              Inc(falseo);
            end;
          end;
          if comparison = '<' then
          begin
            if s < d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s > d then ('>')
                  else ('='));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
      end
      else
      if comparison = '=' then
      begin
        if s = d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
          else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          print('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '>' then
          begin
            if s > d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: <');
              Inc(falseo);
            end;
          end
          else 
          if comparison = '<' then
          begin
            if s < d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: >');
              Inc(falseo);
            end;
          end;
          if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s > d then ('>')
                  else ('<'));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
      end
      else
      if comparison = '>' then
      begin
        if s > d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
              else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          write('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '<' then
          begin
            if s < d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: =');
              Inc(falseo);
            end;
          end
          else if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: <');
              Inc(falseo);
            end;
          end;
          if comparison = '>' then
          begin
            if s > d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                  else ('='));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
        
      end
      else
      begin
        writeln('Некорректно введен символ');
        print('Введите символ сравнения (<, > или =): ');
        readln(comparison);
        if comparison = '<' then
        begin
          if s < d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
          else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            print('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '>' then
            begin
              if s > d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                WriteLn('Увы ошибочка. Вот ответ: =');
                Inc(falseo);
              end;
            end
            else if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: >');
                Inc(falseo);
              end;
            end;
            if comparison = '<' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('>'));
                Inc(falseo);
              end;
            end;
          end;
        end
        else
        if comparison = '=' then
        begin
          if s = d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
          else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            print('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '>' then
            begin
              if s > d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                WriteLn('Увы ошибочка. Вот ответ: <');
                Inc(falseo);
              end;
            end
            else if comparison = '<' then
            begin
              if s < d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: >');
                Inc(falseo);
              end;
            end;
            if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('>'));
                Inc(falseo);
              end;
            end;
          end;
        end
            else
        if comparison = '>' then
        begin
          if s > d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
              else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            write('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '<' then
            begin
              if s < d then begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
                  else
              begin
                WriteLn('Увы ошибочка. Вот ответ: =');
                Inc(falseo);
              end;
            end
            else if comparison = '=' then
            begin
              if s = d then
                begin
                WriteLn('Молодец! Исправился');
              trueo := trueo + 1;
              end
                  else
              begin
                writeln('Увы ошибочка. Вот ответ: <');
                Inc(falseo);
              end;
            end;
            if comparison = '>' then
            begin
              if s > d then
                begin
                WriteLn('Молодец! Исправился');
              trueo := trueo + 1;
              end;
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('='));
                Inc(falseo);
              end;
            end;
          end
        end
        else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
          begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
      end;
    end;
    
    // минус
    if operation = 3 then
    begin
      repeat
        n := Random(1000) + 1;
        m := Random(1000) + 1;
        nn := Random(1000) + 1;
        mm := Random(1000) + 1;
        s := n - nn;
        d := m - mm;
      until (s >= -100) and (n - nn <= 1000) and (m - mm <= 1000) and (d >= -100);
      
      WriteLn('Задача ', i, ' (3-й уровень)');
      Writeln(' ', n, '-', nn, '        ', m, '-', mm);
      Write('Введите символ сравнения (<, > или =): ');
      readln(comparison);
      
      if comparison = '<' then
      begin
        if s < d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
        else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          print('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '>' then
          begin
            if s > d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: =');
              Inc(falseo);
            end;
          end
          else 
          if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: >');
              Inc(falseo);
            end;
          end;
          if comparison = '<' then
          begin
            if s < d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s > d then ('>')
                  else ('='));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
      end
      else
      if comparison = '=' then
      begin
        if s = d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
          else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          print('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '>' then
          begin
            if s > d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: <');
              Inc(falseo);
            end;
          end
          else 
          if comparison = '<' then
          begin
            if s < d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: >');
              Inc(falseo);
            end;
          end;
          if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s > d then ('>')
                  else ('<'));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
      end
      else
      if comparison = '>' then
      begin
        if s > d then
        begin
          writeln('Верно!');
          Inc(trueo);
        end
              else
        begin
          Writeln('Не верно. У тебя есть 2-я попытка');
          write('Введите символ сравнения (<, > или =): ');
          readln(comparison);
          if comparison = '<' then
          begin
            if s < d then 
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              WriteLn('Увы ошибочка. Вот ответ: =');
              Inc(falseo);
            end;
          end
          else if comparison = '=' then
          begin
            if s = d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: <');
              Inc(falseo);
            end;
          end;
          if comparison = '>' then
          begin
            if s > d then
            begin
              WriteLn('Молодец! Исправился');
              Inc(trueo);
            end
            else
            begin
              writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                  else ('='));
              Inc(falseo);
            end;
          end
          else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
            begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
        end;
        
      end
      else
      begin
        writeln('Некорректно введен символ');
        print('Введите символ сравнения (<, > или =): ');
        readln(comparison);
        if comparison = '<' then
        begin
          if s < d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
          else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            print('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '>' then
            begin
              if s > d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                WriteLn('Увы ошибочка. Вот ответ: =');
                Inc(falseo);
              end;
            end
            else if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: >');
                Inc(falseo);
              end;
            end;
            if comparison = '<' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('>'));
                Inc(falseo);
              end;
            end;
          end;
        end
        else
        if comparison = '=' then
        begin
          if s = d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
          else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            print('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '>' then
            begin
              if s > d then 
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                WriteLn('Увы ошибочка. Вот ответ: <');
                Inc(falseo);
              end;
            end
            else if comparison = '<' then
            begin
              if s < d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: >');
                Inc(falseo);
              end;
            end;
            if comparison = '=' then
            begin
              if s = d then
              begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
              else
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('>'));
                Inc(falseo);
              end;
            end;
          end;
        end
            else
        if comparison = '>' then
        begin
          if s > d then
          begin
            writeln('Верно!');
            Inc(trueo);
          end
              else
          begin
            Writeln('Не верно. У тебя есть 2-я попытка');
            write('Введите символ сравнения (<, > или =): ');
            readln(comparison);
            if comparison = '<' then
            begin
              if s < d then begin
                WriteLn('Молодец! Исправился');
                Inc(trueo);
              end
                  else
              begin
                WriteLn('Увы ошибочка. Вот ответ: =');
                Inc(falseo);
              end;
            end
            else if comparison = '=' then
            begin
              if s = d then
                begin
                WriteLn('Молодец! Исправился');
              trueo := trueo + 1;
              end
                  else
              begin
                writeln('Увы ошибочка. Вот ответ: <');
                Inc(falseo);
              end;
            end;
            if comparison = '>' then
            begin
              if s > d then
                begin
                WriteLn('Молодец! Исправился');
              trueo := trueo + 1;
              end;
              begin
                writeln('Увы ошибочка. Вот ответ: ', if s < d then ('<')
                    else ('='));
                Inc(falseo);
              end;
            end;
          end
        end
        else if (comparison <> '<') and (comparison <> '>') and (comparison <> '=') then
          begin
          writeln('Некорректно введен символ.');
        Inc(falseo);
        end
      end;
    end;
  end;    
  Delay(1000);
  if i = skok then
  begin
    ClrScr;
    HideCursor;
    TextColor(Cyan);
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln('                                 Поздравляю, вы прошли 3 уровень');
    writeln('                    ');
    TextColor(Red);
    writeln('                                 Сколько ошибок: ', falseo);
    writeln('                    ');
    TextColor(Green);
    writeln('                                 Сколько правильных ответов: ', trueo);
    writeln('                    ');
    TextColor(Blue);
    writeln('                                 Нажмите любую клавишу, чтобы продолжить...');
    TextColor(White);
    ReadKey;
    ShowCursor;
  end;
  trueall := trueall + trueo;
  falseall := falseall + falseo;
end;




procedure Level4(var trueall,falseall: integer);
var
  i, falseo, skok, sum1, sum2, sumit: Integer;
  x, operation, trueo: Integer;
  RandomNumber1, RandomNumber2, RandomNumber3, RandomNumber4, RandomNumber5, sum: Integer;
    skokStr :string;
  skokValid: Boolean;

begin
  ClrScr;
  Writeln('                                 4 - levl. Уравнение с одним неизвестным. Числа от -100 до 10000            ');
  Writeln(' ');
repeat
    Write('                                Перед запуском 4-го levla необходимо выбрать количество примеров: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, skok);
  until skokValid;
  ClrScr;
TextColor(LightGreen);
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Writeln('   ');
  Write('                                              Генерация примеров..');
  HideCursor;
  ShowLoading;
  ClrScr;
  TextColor(White);
  trueo := 0;
  falseo := 0;
  ShowCursor;
  for i := 1 to skok do
  begin
    operation := random(4);
    if operation = 0 then
    begin
      repeat
        RandomNumber1 := Random(100) + 1;
        RandomNumber2 := Random(100) + 1;
        RandomNumber3 := Random(100) + 1;
        RandomNumber4 := Random(100) + 1;
        RandomNumber5 := Random(100) + 1;
        sum1 := (RandomNumber1 * RandomNumber2);
        sum2 := (RandomNumber3 * RandomNumber4);
        sumit := (sum1 * sum2);
        sum := ((RandomNumber1 * RandomNumber2) * (RandomNumber3 * RandomNumber4)) div RandomNumber5
      until ((RandomNumber1 * RandomNumber2 * RandomNumber3 * RandomNumber4) mod RandomNumber5 = 0) and (sum <= 10000) and (sum1 <= 10000) and (sum2 <= 10000) and (sumit <= 10000);   
      WriteLn('Задача ', i, ' (4-й уровень)');
      writeln('Решите уравнение: Х * ', RandomNumber5, ' = (', RandomNumber1, ' * ', RandomNumber2, ') * (', RandomNumber3, ' * ', RandomNumber4, ')');
       repeat
    Write('Введите значение Х: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, x);
  until skokValid;
      if (x * RandomNumber5) = ((RandomNumber1 * RandomNumber2) * (RandomNumber3 * RandomNumber4)) then
      begin
        writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
         repeat
    Write('Введите значение Х: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, x);
  until skokValid;
        if (x * RandomNumber5) = ((RandomNumber1 * RandomNumber2) * (RandomNumber3 * RandomNumber4)) then
        begin
          Writeln('Молодец!Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          
          writeln('У вас закончились попытки. Решение: ');
          writeln('Х = (', '(', RandomNumber1, ' * ', RandomNumber2, ') * (', RandomNumber3, ' * ', RandomNumber4, ')) : ', RandomNumber5);
          writeln('Х = ', (RandomNumber1 * RandomNumber2) * (RandomNumber3 * RandomNumber4), ' : ', RandomNumber5);
          writeln('Х = ', ((RandomNumber1 * RandomNumber2) * (RandomNumber3 * RandomNumber4)) / RandomNumber5);
          falseo := falseo + 1;
          
        end;
      end;
    end;
    
    // делить
    if operation = 1 then
    begin
      repeat
        RandomNumber1 := Random(100) + 1;
        RandomNumber2 := Random(100) + 1;
        RandomNumber3 := Random(100) + 1;
        RandomNumber4 := Random(100) + 1;
        RandomNumber5 := Random(100) + 1;
        sum := round(((RandomNumber1 / RandomNumber2) / (RandomNumber3 / RandomNumber4)) * RandomNumber5);
      until (RandomNumber1 mod RandomNumber2 = 0) and (RandomNumber3 mod RandomNumber4 = 0)
    and (sum <= 10000) and (((RandomNumber1 div RandomNumber2) mod (RandomNumber3 div RandomNumber4)) = 0);
      WriteLn('Задача ', i, ' (4-й уровень)');
      writeln('Решите уравнение: Х : ', RandomNumber5, ' = (', RandomNumber1, ' : ', RandomNumber2, ') : (', RandomNumber3, ' : ', RandomNumber4, ')');
          repeat
    Write('Введите значение Х: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, x);
  until skokValid;
     
      if (x / RandomNumber5) = ((RandomNumber1 / RandomNumber2) / (RandomNumber3 / RandomNumber4)) then
      begin
        writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
         repeat
    Write('Введите значение Х: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, x);
  until skokValid;
        if (x / RandomNumber5) = ((RandomNumber1 / RandomNumber2) / (RandomNumber3 / RandomNumber4)) then
        begin
          Writeln('Молодец! Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          
          writeln('У вас закончились попытки. Решение: ');
          writeln('Х = (', '(', RandomNumber1, ' : ', RandomNumber2, ') : (', RandomNumber3, ' : ', RandomNumber4, ')) * ', RandomNumber5);
          writeln('Х = ', (RandomNumber1 / RandomNumber2) / (RandomNumber3 / RandomNumber4), ' * ', RandomNumber5);
          writeln('Х = ', ((RandomNumber1 / RandomNumber2) / (RandomNumber3 / RandomNumber4)) * RandomNumber5);
          falseo := falseo + 1;
          
        end;
      end;
    end;
    
    
    // сложить
    if operation = 2 then
    begin
      repeat
        RandomNumber1 := Random(1000) + 1;
        RandomNumber2 := Random(1000) + 1;
        RandomNumber3 := Random(1000) + 1;
        RandomNumber4 := Random(1000) + 1;
        RandomNumber5 := Random(1000) + 1;
        sum := ((RandomNumber1 + RandomNumber2) + (RandomNumber3 + RandomNumber4)) - RandomNumber5
      until (sum >= -100) and (sum <= 10000);
      WriteLn('Задача ', i, ' (4-й уровень)');
      writeln('Решите уравнение: Х + ', RandomNumber5, ' = (', RandomNumber1, ' + ', RandomNumber2, ') + (', RandomNumber3, ' + ', RandomNumber4, ')');
       repeat
    Write('Введите значение Х: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, x);
  until skokValid;
      if (x + RandomNumber5) = ((RandomNumber1 + RandomNumber2) + (RandomNumber3 + RandomNumber4)) then
      begin
        writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
         repeat
    Write('Введите значение Х: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, x);
  until skokValid;
        if (x + RandomNumber5) = ((RandomNumber1 + RandomNumber2) + (RandomNumber3 + RandomNumber4)) then
        begin
          Writeln('Молодец!Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          
          writeln('У вас закончились попытки. Решение: ');
          writeln('Х = (', '(', RandomNumber1, ' + ', RandomNumber2, ') + (', RandomNumber3, ' + ', RandomNumber4, ')) - ', RandomNumber5);
          writeln('Х = ', (RandomNumber1 + RandomNumber2) + (RandomNumber3 + RandomNumber4), ' - ', RandomNumber5);
          writeln('Х = ', ((RandomNumber1 + RandomNumber2) + (RandomNumber3 + RandomNumber4)) - RandomNumber5);
          falseo := falseo + 1;
          
        end;
      end;
    end;
    
    
    // -----------------
    if operation = 3 then
    begin
      repeat
        RandomNumber1 := Random(1000) + 1;
        RandomNumber2 := Random(1000) + 1;
        RandomNumber3 := Random(1000) + 1;
        RandomNumber4 := Random(1000) + 1;
        RandomNumber5 := Random(1000) + 1;
        sum1 := (RandomNumber1 - RandomNumber2);
        sum2 := (RandomNumber3 - RandomNumber4);
        sumit := sum1 - sum2;
        sum := ((RandomNumber1 - RandomNumber2) - (RandomNumber3 - RandomNumber4)) + RandomNumber5;
      until (sum >= -100) and (sum <= 10000) and (sum1 >= -100) and (sum2 >= -100) and (sumit >= -100);
      WriteLn('Задача ', i, ' (4-й уровень)');
      writeln('Решите уравнение: Х - ', RandomNumber5, ' = (', RandomNumber1, ' - ', RandomNumber2, ') - (', RandomNumber3, ' - ', RandomNumber4, ')');
       repeat
    Write('Введите значение Х: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, x);
  until skokValid;
      if (x - RandomNumber5) = ((RandomNumber1 - RandomNumber2) - (RandomNumber3 - RandomNumber4)) then
      begin
        writeln('Верно!');
        trueo := trueo + 1;
      end
      else
      begin
        Writeln('Не верно. У тебя есть 2-я попытка');
         repeat
    Write('Введите значение Х: ');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, x);
  until skokValid;
        if (x - RandomNumber5) = ((RandomNumber1 - RandomNumber2) - (RandomNumber3 - RandomNumber4)) then
        begin
          Writeln('Молодец!Исправился');
          trueo := trueo + 1;
        end
        else
        begin
          
          writeln('У вас закончились попытки. Решение: ');
          writeln('Х = (', '(', RandomNumber1, ' - ', RandomNumber2, ') - (', RandomNumber3, ' - ', RandomNumber4, ')) + ', RandomNumber5);
          writeln('Х = ', (RandomNumber1 - RandomNumber2) - (RandomNumber3 - RandomNumber4), ' + ', RandomNumber5);
          writeln('Х = ', ((RandomNumber1 - RandomNumber2) - (RandomNumber3 - RandomNumber4)) + RandomNumber5);
          falseo := falseo + 1;
          
        end;
      end;
    end;
    
    delay(1000);
    if i = skok then
    begin
    ClrScr;
    HideCursor;
    TextColor(Cyan);
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln(' ');
    writeln('                                 Поздравляю, вы прошли 4 уровень');
    writeln('                    ');
    TextColor(Red);
    writeln('                                 Сколько ошибок: ', falseo);
    writeln('                    ');
    TextColor(Green);
    writeln('                                 Сколько правильных ответов: ', trueo);
    writeln('                    ');
    TextColor(Blue);
    writeln('                                 Нажмите любую клавишу, чтобы продолжить...');
    TextColor(White);
    ReadKey;
    ShowCursor;
    end;
  end;
  trueall := trueall + trueo;
  falseall := falseall + falseo;
end;

procedure lastzastavka(var trueall,falseall: integer);
begin
  ClrScr;
  TextColor(Yellow);
  WriteLn('  ___          _              _ _         __        __               ');
  WriteLn(' |_ _|_ _  ___| |_ __ _ _ _  (_) |_ _  _ / _|___ __| |__ _ _ _ ___ ___');
  WriteLn('  | || '' \\/ -_)  _/ _` | '' \ | |  _| || (_-< (_-< / _` | ''_/ -_|_-<');
  WriteLn(' |___|_||_\\___|\\__\\__,_|_||_|_|\\__|\\_,_/__/\\__/\\__,_|_| \\___/__/');
  WriteLn;
  TextColor(Blue);
  WriteLn('       Поздравляю! Вы успешно завершили "Тренажер для начальных классов"');
  WriteLn;
  TextColor(Magenta);
  WriteLn('                            Спасибо за игру!');
    WriteLn('                            ');
   WriteLn('                            ');
   TextColor(Green);
  writeln('Сколько верных ответов: ', trueall);
  WriteLn('                            ');
  TextColor(Red);
  writeln('Сколько не верных ответов: ', falseall);
  WriteLn('                            ');
  TextColor(Cyan);
  writeln('Для завершения игры нажмите любую клавишу');
  TextColor(DarkGray);
  HideCursor;
end;

procedure AnimateFireworks;
var
  i: Integer;
begin
  TextBackGround(Black);
  ClrScr;
  TextColor(Yellow);
  
  for i := 1 to 20 do
  begin
    GotoXY(Random(118) + 1, Random(25) + 1);
    Write('*');
    Delay(50);
  end;
  
  TextColor(LightCyan);
  
  for i := 1 to 20 do
  begin
    GotoXY(Random(118) + 1, Random(25) + 1);
    Write('#');
    Delay(50);
  end;
  
  TextColor(LightGreen);
  
  for i := 1 to 20 do
  begin
    GotoXY(Random(118) + 1, Random(25) + 1);
    Write('+');
    Delay(50);
  end;
  
  TextColor(White);
  TextBackGround(DarkGray); 
end;

procedure PlayGame;
var
  i, start, level, value1,value2,konec: Integer;
  five: char;
    skokStr :string;
  skokValid: Boolean;

begin
  for start := 0 to 2 do
    case start of
      0: TextBackGround(DarkGray); 
      1: text1;
      2:
        begin
          menu;
          repeat
            five := ReadKey;
          until (five = '5') or (five = #13);
          
          case five of
            '5':
              begin
                ShowCursor;
                text2;
                  repeat
    print(' Давай начинать! Напиши с какого уровня ты хочешь начать игру:');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, i);
    if (i >= 5)  then 
    begin
      TextColor(Red);
      writeln(' Почему выходит ошибка?                '); 
      writeln('1) В игре 4 уровня! Проверь, твое число выше 4? Если да, исправь!             ');
      writeln('2) В игре 4 уровня! Проверь, твое число ниже или равно 0? Если да, исправь!             '); 
      writeln('3) Некорректно веден уровень. Проверь, чтоб ввод произодился с помощью цифр, а не букв!            '); 
      TextColor(Black);
      end;
      if i <=0 then
    begin
      TextColor(Red);
      writeln(' Почему выходит ошибка?                '); 
      writeln('1) В игре 4 уровня! Проверь, твое число выше 4? Если да, исправь!             ');
      writeln('2) В игре 4 уровня! Проверь, твое число ниже или равно 0? Если да, исправь!             '); 
      writeln('3) Некорректно веден уровень. Проверь, чтоб ввод произодился с помощью цифр, а не букв!            '); 
      TextColor(Black);
      end;
  until (skokValid) and (i < 5);
                ShowCursor;
              end;
            
            #13:
              begin
                TextColor(Blue);
                ClrScr;
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln(' ');
                Writeln('                                            Уровень 1 - Задачи для 1 класса     ');
                Writeln('                                            Уровень 2 - Задачи для 2 класса     ');
                Writeln('                                            Уровень 3 - Задачи для 3 класса     ');
                Writeln('                                            Уровень 4 - Задачи для 4 класса     ');
                Writeln(' ');
                    repeat
    print('                              Давай начинать! Напиши с какого уровня ты хочешь начать игру:');
    Readln(skokStr);
    skokValid := TryStrToInt(skokStr, i);
    if (i >= 5)  then 
    begin
      TextColor(Red);
      writeln('                                            Почему выходит ошибка?                '); 
      writeln('                         1) В игре 4 уровня! Проверь, твое число выше 4? Если да, исправь!             ');
      writeln('                         2) В игре 4 уровня! Проверь, твое число ниже или равно 0? Если да, исправь!             '); 
      writeln('                         3) Некорректно веден уровень. Проверь, чтоб ввод произодился с помощью цифр, а не букв!            '); 
      TextColor(Blue);
      end;
      if i <=0 then
    begin
      TextColor(Red);
      writeln('                                            Почему выходит ошибка?                '); 
      writeln('                         1) В игре 4 уровня! Проверь, твое число выше 4? Если да, исправь!             ');
      writeln('                         2) В игре 4 уровня! Проверь, твое число ниже или равно 0? Если да, исправь!             '); 
      writeln('                         3) Некорректно веден уровень. Проверь, чтоб ввод произодился с помощью цифр, а не букв!            '); 
      TextColor(Blue);
      end;
  until (skokValid) and (i < 5) and (i > 0) ;
                TextColor(White);
              end;
          end;
        end;
    end;
  
  for level := i to 4 do
  begin
    case level of
      1: Level1(value1,value2);
      2: Level2(value1,value2);
      3: Level3(value1,value2);
      4: Level4(value1,value2);
      end;
      end;
      for konec := 0 to 1 do
        begin
        case konec of
      0: AnimateFireworks;
      1: lastzastavka(value1,value2);
    end;
  end;
end;

begin
  PlayGame;
end.
