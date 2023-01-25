uses graphabc;
var (x1, y1, stadiya, ug ) := (444, 222, 1, 50);
 procedure factorial(x2, y2, a, r : real; k : integer);
 begin
   if k > 0 then
     begin
       r := r * sin(pi/4);
       factorial(x2, y2, a + pi/4, r, k - 1);
       factorial(x2 + r * cos(a + pi/4), y2 - r * sin(a + pi/4), a - pi/4, r, k - 1);
     end
     else
       line(trunc(x2), trunc(y2), trunc(x2 + r * cos(a)), trunc(y2 - r * sin(a))); 
     end;
     procedure treker(menu : integer);
     begin
       case menu of
         vk_s: y1 := y1 - 10;
         vk_w: y1 := y1 + 10;
         vk_a: if ug < 100 then
            ug := ug + 1;
         vk_d: if ug > 10 then
            ug := ug - 1;
         vk_e: if stadiya < 15 then
            stadiya := stadiya + 1;
         vk_q: if stadiya > 0 then
            stadiya := stadiya - 1;
       end;
       window.clear;
       factorial(x1 - ug, y1 ,x1 + ug, y1, stadiya);
       redraw;
       end;
       begin
         setwindowsize(800, 800);
         lockdrawing;
         treker(1);
         setpencolor(clindigo);
         textout(windowwidth - 40, y1 + 50, 'КРИВАЯ ЛЕВИ');
         setwindowcaption('КРИВАЯ ЛЕВИ');
         onkeydown := onkeydown + treker;
       end.