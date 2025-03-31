drop table Comentarios;

create table Comentarios(
    id serial primary key,
    contenido text,
    materiaId integer,
    usuarioId integer
);