ALTER TABLE clinica
  ADD COLUMN telefono_contacto VARCHAR(20) NOT NULL DEFAULT 'N/A',
  ADD COLUMN sitio_web VARCHAR(120);

ALTER TABLE medico_clinica
  ADD CONSTRAINT unq_medico_clinica UNIQUE (id_medico, id_clinica);

ALTER TABLE medico
  RENAME COLUMN especialidad TO especialidad_principal;

ALTER TABLE paciente
  ALTER COLUMN email TYPE VARCHAR(150);

ALTER TABLE cita
  ADD COLUMN fecha DATE NOT NULL DEFAULT CURRENT_DATE;

ALTER TABLE cita
  ADD COLUMN estado VARCHAR(20) NOT NULL DEFAULT 'PROGRAMADA';

ALTER TABLE cita
  ADD CONSTRAINT chk_estado_cita
  CHECK (estado IN ('PROGRAMADA','REALIZADA','CANCELADA'));

ALTER TABLE medico_clinica
  DROP CONSTRAINT chk_horas_pos;

ALTER TABLE medico_clinica
  ADD CONSTRAINT chk_horas_pos
  CHECK (horas >= 8 AND horas <= 45);  

ALTER TABLE clinica
  DROP COLUMN sitio_web;