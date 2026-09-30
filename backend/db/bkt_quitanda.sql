-- Garante que a extensão de UUID existe no banco
CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;

-- Cria a tabela de frutas caso não exista
CREATE TABLE IF NOT EXISTS public.frutas (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    nome text NOT NULL,
    CONSTRAINT frutas_pkey PRIMARY KEY (id)
);

-- Insira aqui as suas frutas (Exemplo de inserção padrão)
-- Se o seu arquivo original tinha dados, você pode adicionar novos INSERTS abaixo
INSERT INTO public.frutas (nome) VALUES ('Banana') ON CONFLICT DO NOTHING;
INSERT INTO public.frutas (nome) VALUES ('Maçã') ON CONFLICT DO NOTHING;
INSERT INTO public.frutas (nome) VALUES ('Morango') ON CONFLICT DO NOTHING;
