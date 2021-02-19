CREATE SCHEMA web3_naam_voornaam; -- replace naam_voornaam with your own naam and voornaam

GRANT ALL ON SCHEMA web3_naam_voornaam TO lector; -- replace naam_voornaam with your own naam and voornaam
GRANT ALL ON SCHEMA web3_naam_voornaam TO local_u0015529; -- replace naam_voornaam with your own naam and voornaam
GRANT ALL ON SCHEMA web3_naam_voornaam TO local_r01234567; -- replace r01234567 with your own r-number

SET search_path TO web3_naam_voornaam; -- replace naam_voornaam with your own naam and voornaam

DROP TABLE IF EXISTS web3_naam_voornaam.gebruiker; -- replace naam_voornaam with your own naam and voornaam

CREATE TABLE web3_naam_voornaam.gebruiker ( -- replace naam_voornaam with your own naam and voornaam
    id SERIAL PRIMARY KEY,
    voornaam character varying(32) NOT NULL,
    familienaam character varying(32) NOT NULL,
    emailadres character varying(64) NOT NULL,
    wachtwoord character varying(32) NOT NULL,
    rol character varying(16) DEFAULT 'gebruiker' NOT NULL
);

GRANT ALL ON TABLE web3_naam_voornaam.gebruiker TO lector; -- replace naam_voornaam with your own naam and voornaam
GRANT ALL ON TABLE web3_naam_voornaam.gebruiker TO local_u0015529; -- replace naam_voornaam with your own naam and voornaam
GRANT ALL ON TABLE web3_naam_voornaam.gebruiker TO local_r01234567;-- replace r01234567 with your own r-number

GRANT ALL ON SEQUENCE web3_naam_voornaam.gebruiker_id_seq TO lector;
GRANT ALL ON SEQUENCE web3_naam_voornaam.gebruiker_id_seq TO local_u0015529;
GRANT ALL ON SEQUENCE web3_naam_voornaam.gebruiker_id_seq TO local_r0123456;


DROP TABLE IF EXISTS web3_naam_voornaam.bezoek; -- replace naam_voornaam with your own naam and voornaam

CREATE TABLE web3_naam_voornaam.bezoek ( -- replace naam_voornaam with your own naam and voornaam
    id SERIAL PRIMARY KEY,
    voornaam character varying(32) NOT NULL,
    familienaam character varying(32) NOT NULL,
    emailadres character varying(64) NOT NULL,
    telefoonnummer character varying(15) NOT NULL,
    datum integer NOT NULL,
    aankomstuur integer NOT NULL
);

GRANT ALL ON TABLE web3_naam_voornaam.bezoek TO lector; -- replace naam_voornaam with your own naam and voornaam
GRANT ALL ON TABLE web3_naam_voornaam.bezoek TO local_u0015529; -- replace naam_voornaam with your own naam and voornaam
GRANT ALL ON TABLE web3_naam_voornaam.bezoek TO local_r01234567;-- replace r01234567 with your own r-number

GRANT ALL ON SEQUENCE web3_naam_voornaam.bezoek_id_seq TO lector;
GRANT ALL ON SEQUENCE web3_naam_voornaam.bezoek_id_seq TO local_u0015529;
GRANT ALL ON SEQUENCE web3_naam_voornaam.bezoek_id_seq TO local_r0123456;

