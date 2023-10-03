select distinct person.name
from antenna as ant
         join signal on signal.sent_via_antenna = ant.id
         join planet on planet.id = signal.directed_to_planet
         join show_on_screen_from_antenna as sosfa on sosfa.from_antenna_id = ant.id
         join screen as sc on sc.id = sosfa.to_screen_id
         join person_watches_screen as pws on pws.screen_id = sc.id
         join person on person.id = pws.watching_person_id
where planet.id = 1;