/** O modelo de cada Label'
MERGE (:Person {
	name: "",
	birthday: "",
	genre: "",
	nationality: ""
});
MERGE (:Actor:Person {
	name: "",
	birthday: "",
	genre: "",
	nationality: ""
});
MERGE (:Director:Person {
	name: "",
	birthday: "",
	genre: "",
	nationality: ""
});
MERGE (:User:Person {
	name: "",
	birthday: "",
	genre: "",
	nationality: ""
});


MERGE (:Media {
	title: "",
	sinopsis: "",
	releaseDate: ""
});
MERGE (:Media:Movie {
	title: "",
	sinopsis: "",
	releaseDate: "",
	duration: ""
});
MERGE (:Media:Serie {
	title: "",
	sinopsis: "",
	releaseDate: "",
	generalRating: "",
	finished: true/false,
	finishedDate: ""
})

MERGE (:Genre {
	name: ""
	description: ""
});
MERGE (:Serie)-[:CLASSIFIED_AS]->(:Genre);
MERGE (:Movie)-[:CLASSIFIED_AS]->(:Genre);

MERGE (:Serie)-[:HAS]->(:Season {
	number: ""
});
MERGE (:Season)-[:HAS]->(:Episode {
	number: "",
	duration: ""
});

MERGE (:Actor)-[:ACTED_IN]->(:Media);
MERGE (:Director)-[:DIRECTED]->(:Media);

MERGE (:User)-[:WATCHED {
	rating: 0;
}]->(:Media);
*/

MERGE (liberty:Movie:Media {
  title: "Um Sonho de Liberdade",
  synopsis: "Um banqueiro condenado injustamente forma uma amizade duradoura na prisão e mantém esperança de liberdade.",
  releaseDate: "1994-09-23",
  duration: "02:22:00"
})

MERGE (godfather:Movie:Media {
  title: "O Poderoso Chefão",
  synopsis: "O patriarca de uma família mafiosa transfere o poder para seu filho relutante, em meio a violência e lealdade.",
  releaseDate: "1972-03-24",
  duration: "02:55:00"
})

MERGE (batman:Movie:Media {
  title: "Batman: O Cavaleiro das Trevas",
  synopsis: "Batman enfrenta o caos instaurado pelo Coringa, colocando em risco Gotham e seus próprios valores.",
  releaseDate: "2008-07-18",
  duration: "02:32:00"
})

MERGE (godfathernd:Movie:Media {
  title: "O Poderoso Chefão II",
  synopsis: "A juventude de Vito Corleone é mostrada enquanto Michael fortalece o império criminoso da família.",
  releaseDate: "1974-12-20",
  duration: "03:20:00"
})

MERGE (twelvemans:Movie:Media {
  title: "Doze Homens e uma Sentença",
  synopsis: "Doze jurados discutem o destino de um jovem acusado de assassinato, revelando preconceitos e dúvidas.",
  releaseDate: "1957-04-10",
  duration: "01:36:00"
})

MERGE (schindler:Movie:Media {
  title: "A Lista de Schindler",
  synopsis: "Oskar Schindler salva centenas de judeus durante o Holocausto ao empregá-los em sua fábrica.",
  releaseDate: "1993-12-15",
  duration: "03:15:00"
})

MERGE (rings:Movie:Media {
  title: "O Senhor dos Anéis: O Retorno do Rei",
  synopsis: "Gandalf e Aragorn lideram os homens contra Sauron enquanto Frodo e Sam tentam destruir o Um Anel.",
  releaseDate: "2003-12-17",
  duration: "03:21:00"
})

MERGE (fiction:Movie:Media {
  title: "Pulp Fiction – Tempo de Violência",
  synopsis: "Histórias interligadas de criminosos, um boxeador e um casal de assaltantes revelam violência e redenção.",
  releaseDate: "1994-10-14",
  duration: "02:34:00"
})

MERGE (ringsociety:Movie:Media {
  title: "O Senhor dos Anéis: A Sociedade do Anel",
  synopsis: "Frodo inicia sua jornada para destruir o Um Anel, acompanhado pela Sociedade formada em Rivendell.",
  releaseDate: "2001-12-19",
  duration: "02:58:00"
})

MERGE (fight:Movie:Media {
  title: "Clube da Luta",
  synopsis: "Um trabalhador insone e um fabricante de sabão criam um clube secreto de lutas que sai do controle.",
  releaseDate: "1999-10-15",
  duration: "02:19:00"
})

MERGE (tim:Person:Actor {
	name: "Tim Robins",
	birthday: "1958-10-16",
	genre: "M",
	nationality: "Americana"
})
MERGE (tim)-[:ACTED_IN]->(liberty)

MERGE (morgan:Person:Actor {
	name: "Morgan Freeman",
	birthday: "1937-06-01",
	genre: "M",
	nationality: "Americana"
})
MERGE (morgan)-[:ACTED_IN]->(liberty)
MERGE (morgan)-[:ACTED_IN]->(batman)

MERGE (al:Person:Actor {
	name: "Al Pacino",
	birthday: "1940-04-25",
	genre: "M",
	nationality: "Americana"
})
MERGE (al)-[:ACTED_IN]->(godfather)
MERGE (al)-[:ACTED_IN]->(godfathernd)

MERGE (robert:Person:Actor {
	name: "Robert Duvali",
	birthday: "1931-01-05",
	genre: "M",
	nationality: "Americana"
})
MERGE (robert)-[:ACTED_IN]->(godfather)

MERGE (bale:Person:Actor {
	name: "Christian Bale",
	birthday: "1974-01-30",
	genre: "M",
	nationality: "Americana"
})
MERGE (bale)-[:ACTED_IN]->(batman)

MERGE (niro:Person:Actor {
	name: "Robert De Niro",
	birthday: "1943-08-17",
	genre: "M",
	nationality: "Americana"
})
MERGE (niro)-[:ACTED_IN]->(godfathernd)

MERGE (fonda:Person:Actor {
	name: "Henry Fonda",
	birthday: "1905-05-16",
	genre: "M",
	nationality: "Americana"
})
MERGE (fonda)-[:ACTED_IN]->(twelvemans)

MERGE (lee:Person:Actor {
	name: "Lee J. Cobb",
	birthday: "1911-12-08",
	genre: "M",
	nationality: "Americana"
})
MERGE (lee)-[:ACTED_IN]->(twelvemans)

MERGE (liam:Person:Actor {
	name: "Liam Neeson",
	birthday: "1952-06-07",
	genre: "M",
	nationality: "Irlandesa"
})
MERGE (liam)-[:ACTED_IN]->(schindler)

MERGE (ben:Person:Actor {
	name: "Ben Kingsley",
	birthday: "1943-12-31",
	genre: "M",
	nationality: "Britânica"
})
MERGE (ben)-[:ACTED_IN]->(schindler)

MERGE (elijah:Person:Actor {
	name: "Elijah Wood",
	birthday: "1981-01-28",
	genre: "M",
	nationality: "Americana"
})
MERGE (elijah)-[:ACTED_IN]->(rings)

MERGE (ian:Person:Actor {
	name: "Ian McKellen",
	birthday: "1939-05-25",
	genre: "M",
	nationality: "Britânica"
})
MERGE (ian)-[:ACTED_IN]->(rings)

MERGE (john:Person:Actor {
	name: "John Travolta",
	birthday: "1954-02-18",
	genre: "M",
	nationality: "Americana"
})
MERGE (john)-[:ACTED_IN]->(fiction)

MERGE (samuel:Person:Actor {
	name: "Samuel L. Jackson",
	birthday: "1948-12-21",
	genre: "M",
	nationality: "Americana"
})
MERGE (samuel)-[:ACTED_IN]->(fiction)

MERGE (viggo:Person:Actor {
	name: "Viggo Mortensen",
	birthday: "1958-10-20",
	genre: "M",
	nationality: "Americana"
})
MERGE (viggo)-[:ACTED_IN]->(ringsociety)

MERGE (orlando:Person:Actor {
	name: "Orlando Bloom",
	birthday: "1977-01-13",
	genre: "M",
	nationality: "Britânica"
})
MERGE (orlando)-[:ACTED_IN]->(ringsociety)

MERGE (brad:Person:Actor {
	name: "Brad Pitt",
	birthday: "1963-12-18",
	genre: "M",
	nationality: "Americana"
})
MERGE (brad)-[:ACTED_IN]->(fight)

MERGE (edward:Person:Actor {
	name: "Edward Norton",
	birthday: "1960-08-18",
	genre: "M",
	nationality: "Americana"
})
MERGE (edward)-[:ACTED_IN]->(fight)

MERGE (darabont:Person:Director {
  name: "Frank Darabont",
  birthday: "1959-01-28",
  genre: "M",
  nationality: "Americana"
})
MERGE (darabont)-[:DIRECTED]->(liberty)

MERGE (coppola:Person:Director {
  name: "Francis Ford Coppola",
  birthday: "1939-04-07",
  genre: "M",
  nationality: "Americana"
})
MERGE (coppola)-[:DIRECTED]->(godfather)
MERGE (coppola)-[:DIRECTED]->(godfathernd)

MERGE (nolan:Person:Director {
  name: "Christopher Nolan",
  birthday: "1970-07-30",
  genre: "M",
  nationality: "Britânica"
})
MERGE (nolan)-[:DIRECTED]->(batman)

MERGE (lumet:Person:Director {
  name: "Sidney Lumet",
  birthday: "1924-06-25",
  genre: "M",
  nationality: "Americana"
})
MERGE (lumet)-[:DIRECTED]->(twelvemans)

MERGE (spielberg:Person:Director {
  name: "Steven Spielberg",
  birthday: "1946-12-18",
  genre: "M",
  nationality: "Americana"
})
MERGE (spielberg)-[:DIRECTED]->(schindler)

MERGE (jackson:Person:Director {
  name: "Peter Jackson",
  birthday: "1961-10-31",
  genre: "M",
  nationality: "Neozelandesa"
})
MERGE (jackson)-[:DIRECTED]->(rings)
MERGE (jackson)-[:DIRECTED]->(ringsociety)

MERGE (tarantino:Person:Director {
  name: "Quentin Tarantino",
  birthday: "1963-03-27",
  genre: "M",
  nationality: "Americana"
})
MERGE (tarantino)-[:DIRECTED]->(fiction)

MERGE (fincher:Person:Director {
  name: "David Fincher",
  birthday: "1962-08-28",
  genre: "M",
  nationality: "Americana"
})
MERGE (fincher)-[:DIRECTED]->(fight)

MERGE (twd:Serie:Media {
  title: "The Walking Dead",
  synopsis: "Um grupo de sobreviventes luta contra zumbis e outros perigos em um mundo pós-apocalíptico.",
  releaseDate: "2010-10-31",
  generalRating: "8.1",
  finished: true,
  finishedDate: "2022-11-20"
})
MERGE (darabont)-[:DIRECTED]->(twd)

MERGE (taken:Serie:Media {
  title: "Taken",
  synopsis: "Três famílias têm suas vidas entrelaçadas por décadas de encontros com alienígenas e conspirações governamentais.",
  releaseDate: "2002-12-02",
  generalRating: "7.8",
  finished: true,
  finishedDate: "2002-12-18"
})
MERGE (spielberg)-[:DIRECTED]->(taken)
MERGE (liam)-[:ACTED_IN]->(taken)

MERGE (mindhunter:Serie:Media {
  title: "Mindhunter",
  synopsis: "Dois agentes do FBI entrevistam serial killers para entender suas mentes e resolver casos.",
  releaseDate: "2017-10-13",
  generalRating: "8.6",
  finished: true,
  finishedDate: "2019-08-16"
})
MERGE (fincher)-[:DIRECTED]->(mindhunter)

MERGE (twdSeason1:Season {number: 1, title: "The Infection"})
MERGE (twd)-[:HAS]->(twdSeason1)

MERGE (twdEp1:Episode {number: 1, duration: "01:07:00", title: "The start"})
MERGE (twdSeason1)-[:HAS]->(twdEp1)

MERGE (twdEp2:Episode {number: 2, duration: "00:45:00", title: "Who...?"})
MERGE (twdSeason1)-[:HAS]->(twdEp2)

MERGE (takenSeason1:Season {number: 1, title: "You're taken"})
MERGE (taken)-[:HAS]->(takenSeason1)

MERGE (takenEp1:Episode {number: 1, duration: "01:30:00", title: "Don't..."})
MERGE (takenSeason1)-[:HAS]->(takenEp1)

MERGE (takenEp2:Episode {number: 2, duration: "01:30:00", title: "Isn't yours"})
MERGE (takenSeason1)-[:HAS]->(takenEp2)

MERGE (mindhunterSeason1:Season {number: 1, title: "Hunger Games"})
MERGE (mindhunter)-[:HAS]->(mindhunterSeason1)

MERGE (mindhunterEp1:Episode {number: 1, duration: "01:00:00", title: "Survive"})
MERGE (mindhunterSeason1)-[:HAS]->(mindhunterEp1)

MERGE (mindhunterEp2:Episode {number: 2, duration: "01:00:00", title: "They'll come"})
MERGE (mindhunterSeason1)-[:HAS]->(mindhunterEp2)

MERGE (mindhunterSeason2:Season {number: 2, title: "Fight for it"})
MERGE (mindhunter)-[:HAS]->(mindhunterSeason2)

MERGE (mindhunterEp21:Episode {number: 1, duration: "01:00:00", title: "It won't stop"})
MERGE (mindhunterSeason2)-[:HAS]->(mindhunterEp21)

MERGE (mindhunterEp22:Episode {number: 2, duration: "01:00:00", title: "It'll never end"})
MERGE (mindhunterSeason2)-[:HAS]->(mindhunterEp22)

MERGE (epic:Genre {name: "Épico"})
MERGE (cience:Genre {name: "Ficção científica"})
MERGE (action:Genre {name: "Ação"})
MERGE (genre:Genre {name: "Drama"})
MERGE (triology:Genre {name: "Trilogia"})
MERGE (history:Genre {name: "Histórico"})
MERGE (fantasy:Genre {name: "Fantasia"})

MERGE (twd)-[:IN_GENRE]->(cience)
MERGE (twd)-[:IN_GENRE]->(action)
MERGE (mindhunter)-[:IN_GENRE]->(genre)
MERGE (mindhunter)-[:IN_GENRE]->(action)
MERGE (taken)-[:IN_GENRE]->(epic)
MERGE (batman)-[:IN_GENRE]->(epic)
MERGE (batman)-[:IN_GENRE]->(action)
MERGE (fiction)-[:IN_GENRE]->(cience)
MERGE (fiction)-[:IN_GENRE]->(action)
MERGE (ringsociety)-[:IN_GENRE]->(triology)
MERGE (rings)-[:IN_GENRE]->(triology)
MERGE (godfather)-[:IN_GENRE]->(genre)
MERGE (godfathernd)-[:IN_GENRE]->(genre)
MERGE (schindler)-[:IN_GENRE]->(history)
MERGE (twelvemans)-[:IN_GENRE]->(action)
MERGE (liberty)-[:IN_GENRE]->(genre)
MERGE (liberty)-[:IN_GENRE]->(fantasy)
MERGE (rings)-[:IN_GENRE]->(fantasy)
MERGE (ringsociety)-[:IN_GENRE]->(fantasy)

MERGE (ilan:Person:User {
	name: "Ilan Vitor",
	birthday: "2006-05-27",
	genre: "M",
	nationality: "Brasileira"
})
MERGE (ilan)-[:WATCHED {rating: 9}]->(godfather)
MERGE (ilan)-[:WATCHED {rating: 7}]->(schindler)
MERGE (ilan)-[:WATCHED {rating: 4}]->(fight)
MERGE (ilan)-[:WATCHED {rating: 2}]->(twd)

MERGE (margaret:Person:User {
	name: "Margaret Gusman",
	birthday: "1999-01-13",
	genre: "F",
	nationality: "Francesa"
})
MERGE (margaret)-[:WATCHED {rating: 1}]->(godfather)
MERGE (margaret)-[:WATCHED {rating: 0}]->(godfathernd)
MERGE (margaret)-[:WATCHED {rating: 8}]->(fiction)

MERGE (valentina:Person:User {
	name: "Valentina Souza",
	birthday: "2012-12-31",
	genre: "F",
	nationality: "Brasileira"
})
MERGE (valentina)-[:WATCHED {rating: 10}]->(twd)
MERGE (valentina)-[:WATCHED {rating: 10}]->(taken)
MERGE (valentina)-[:WATCHED {rating: 10}]->(mindhunter);
