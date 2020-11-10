PGDMP     3        
    
    
    x            mascotas    12.4    13.0 4    G           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            H           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            I           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            J           1262    16586    mascotas    DATABASE     d   CREATE DATABASE mascotas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE mascotas;
                postgres    false            �            1259    24871    citas    TABLE     	  CREATE TABLE public.citas (
    id_cita integer NOT NULL,
    id_mascota integer NOT NULL,
    id_doctor integer NOT NULL,
    estado character varying(50) NOT NULL,
    fecha_cita date NOT NULL,
    fecha_registro date NOT NULL,
    id_usuario integer NOT NULL
);
    DROP TABLE public.citas;
       public         heap    postgres    false            �            1259    24869    citas_id_cita_seq    SEQUENCE     �   CREATE SEQUENCE public.citas_id_cita_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.citas_id_cita_seq;
       public          postgres    false    207            K           0    0    citas_id_cita_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.citas_id_cita_seq OWNED BY public.citas.id_cita;
          public          postgres    false    206            �            1259    33117    datos_mascota    TABLE     �  CREATE TABLE public.datos_mascota (
    id_dato_mascota integer NOT NULL,
    nombre character varying(150) NOT NULL,
    raza character varying(150) NOT NULL,
    color character varying(150) NOT NULL,
    peso integer NOT NULL,
    estatura integer NOT NULL,
    sexo character(1) NOT NULL,
    edad integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_mod date,
    estado text
);
 !   DROP TABLE public.datos_mascota;
       public         heap    postgres    false            �            1259    33115 !   datos_mascota_id_dato_mascota_seq    SEQUENCE     �   CREATE SEQUENCE public.datos_mascota_id_dato_mascota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.datos_mascota_id_dato_mascota_seq;
       public          postgres    false    215            L           0    0 !   datos_mascota_id_dato_mascota_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.datos_mascota_id_dato_mascota_seq OWNED BY public.datos_mascota.id_dato_mascota;
          public          postgres    false    214            �            1259    33108    doctores    TABLE     �   CREATE TABLE public.doctores (
    id_doctor integer NOT NULL,
    id_usuario integer NOT NULL,
    estado character varying(50) NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_mod date
);
    DROP TABLE public.doctores;
       public         heap    postgres    false            �            1259    33106    doctores_id_doctor_seq    SEQUENCE     �   CREATE SEQUENCE public.doctores_id_doctor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.doctores_id_doctor_seq;
       public          postgres    false    213            M           0    0    doctores_id_doctor_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.doctores_id_doctor_seq OWNED BY public.doctores.id_doctor;
          public          postgres    false    212            �            1259    24879    mascotas    TABLE     �   CREATE TABLE public.mascotas (
    id_mascota integer NOT NULL,
    id_doctor integer NOT NULL,
    id_usuario integer NOT NULL,
    id_datos_mascota integer NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_mod date
);
    DROP TABLE public.mascotas;
       public         heap    postgres    false            �            1259    24877    mascotas_id_mascota_seq    SEQUENCE     �   CREATE SEQUENCE public.mascotas_id_mascota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.mascotas_id_mascota_seq;
       public          postgres    false    209            N           0    0    mascotas_id_mascota_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.mascotas_id_mascota_seq OWNED BY public.mascotas.id_mascota;
          public          postgres    false    208            �            1259    33082    modulos    TABLE     �   CREATE TABLE public.modulos (
    id_modulo integer NOT NULL,
    nombre character varying(150) NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_mod date
);
    DROP TABLE public.modulos;
       public         heap    postgres    false            �            1259    33080    modulos_id_modulo_seq    SEQUENCE     �   CREATE SEQUENCE public.modulos_id_modulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.modulos_id_modulo_seq;
       public          postgres    false    211            O           0    0    modulos_id_modulo_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.modulos_id_modulo_seq OWNED BY public.modulos.id_modulo;
          public          postgres    false    210            �            1259    16679    tipo_usuario    TABLE     �   CREATE TABLE public.tipo_usuario (
    id_tipo_usuario integer NOT NULL,
    usuario character varying(255),
    fecha_creacion date,
    fecha_mod date
);
     DROP TABLE public.tipo_usuario;
       public         heap    postgres    false            �            1259    16677     tipo_usuario_id_tipo_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_usuario_id_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tipo_usuario_id_tipo_usuario_seq;
       public          postgres    false    205            P           0    0     tipo_usuario_id_tipo_usuario_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tipo_usuario_id_tipo_usuario_seq OWNED BY public.tipo_usuario.id_tipo_usuario;
          public          postgres    false    204            �            1259    16668    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    clave text NOT NULL,
    correo text NOT NULL,
    numero character varying(25) NOT NULL,
    tipo_usuario integer NOT NULL,
    cedula text NOT NULL,
    estado character varying(30) NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_mod date,
    token text NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16666    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    203            Q           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    202            �
           2604    24874    citas id_cita    DEFAULT     n   ALTER TABLE ONLY public.citas ALTER COLUMN id_cita SET DEFAULT nextval('public.citas_id_cita_seq'::regclass);
 <   ALTER TABLE public.citas ALTER COLUMN id_cita DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    33120    datos_mascota id_dato_mascota    DEFAULT     �   ALTER TABLE ONLY public.datos_mascota ALTER COLUMN id_dato_mascota SET DEFAULT nextval('public.datos_mascota_id_dato_mascota_seq'::regclass);
 L   ALTER TABLE public.datos_mascota ALTER COLUMN id_dato_mascota DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    33111    doctores id_doctor    DEFAULT     x   ALTER TABLE ONLY public.doctores ALTER COLUMN id_doctor SET DEFAULT nextval('public.doctores_id_doctor_seq'::regclass);
 A   ALTER TABLE public.doctores ALTER COLUMN id_doctor DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    24882    mascotas id_mascota    DEFAULT     z   ALTER TABLE ONLY public.mascotas ALTER COLUMN id_mascota SET DEFAULT nextval('public.mascotas_id_mascota_seq'::regclass);
 B   ALTER TABLE public.mascotas ALTER COLUMN id_mascota DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    33085    modulos id_modulo    DEFAULT     v   ALTER TABLE ONLY public.modulos ALTER COLUMN id_modulo SET DEFAULT nextval('public.modulos_id_modulo_seq'::regclass);
 @   ALTER TABLE public.modulos ALTER COLUMN id_modulo DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    16682    tipo_usuario id_tipo_usuario    DEFAULT     �   ALTER TABLE ONLY public.tipo_usuario ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public.tipo_usuario_id_tipo_usuario_seq'::regclass);
 K   ALTER TABLE public.tipo_usuario ALTER COLUMN id_tipo_usuario DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16671    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    202    203    203            <          0    24871    citas 
   TABLE DATA           o   COPY public.citas (id_cita, id_mascota, id_doctor, estado, fecha_cita, fecha_registro, id_usuario) FROM stdin;
    public          postgres    false    207   �=       D          0    33117    datos_mascota 
   TABLE DATA           �   COPY public.datos_mascota (id_dato_mascota, nombre, raza, color, peso, estatura, sexo, edad, fecha_nacimiento, fecha_creacion, fecha_mod, estado) FROM stdin;
    public          postgres    false    215   �=       B          0    33108    doctores 
   TABLE DATA           \   COPY public.doctores (id_doctor, id_usuario, estado, fecha_creacion, fecha_mod) FROM stdin;
    public          postgres    false    213   >>       >          0    24879    mascotas 
   TABLE DATA           r   COPY public.mascotas (id_mascota, id_doctor, id_usuario, id_datos_mascota, fecha_creacion, fecha_mod) FROM stdin;
    public          postgres    false    209   u>       @          0    33082    modulos 
   TABLE DATA           O   COPY public.modulos (id_modulo, nombre, fecha_creacion, fecha_mod) FROM stdin;
    public          postgres    false    211   �>       :          0    16679    tipo_usuario 
   TABLE DATA           [   COPY public.tipo_usuario (id_tipo_usuario, usuario, fecha_creacion, fecha_mod) FROM stdin;
    public          postgres    false    205   ?       8          0    16668    usuarios 
   TABLE DATA           �   COPY public.usuarios (id_usuario, nombre, apellido, clave, correo, numero, tipo_usuario, cedula, estado, fecha_creacion, fecha_mod, token) FROM stdin;
    public          postgres    false    203   T?       R           0    0    citas_id_cita_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.citas_id_cita_seq', 3, true);
          public          postgres    false    206            S           0    0 !   datos_mascota_id_dato_mascota_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.datos_mascota_id_dato_mascota_seq', 4, true);
          public          postgres    false    214            T           0    0    doctores_id_doctor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.doctores_id_doctor_seq', 3, true);
          public          postgres    false    212            U           0    0    mascotas_id_mascota_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.mascotas_id_mascota_seq', 4, true);
          public          postgres    false    208            V           0    0    modulos_id_modulo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.modulos_id_modulo_seq', 5, true);
          public          postgres    false    210            W           0    0     tipo_usuario_id_tipo_usuario_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tipo_usuario_id_tipo_usuario_seq', 3, true);
          public          postgres    false    204            X           0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 14, true);
          public          postgres    false    202            �
           2606    24876    citas citas_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.citas
    ADD CONSTRAINT citas_pkey PRIMARY KEY (id_cita);
 :   ALTER TABLE ONLY public.citas DROP CONSTRAINT citas_pkey;
       public            postgres    false    207            �
           2606    33122     datos_mascota datos_mascota_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.datos_mascota
    ADD CONSTRAINT datos_mascota_pkey PRIMARY KEY (id_dato_mascota);
 J   ALTER TABLE ONLY public.datos_mascota DROP CONSTRAINT datos_mascota_pkey;
       public            postgres    false    215            �
           2606    24884    mascotas mascotas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY (id_mascota);
 @   ALTER TABLE ONLY public.mascotas DROP CONSTRAINT mascotas_pkey;
       public            postgres    false    209            �
           2606    33087    modulos modulos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id_modulo);
 >   ALTER TABLE ONLY public.modulos DROP CONSTRAINT modulos_pkey;
       public            postgres    false    211            �
           2606    16684    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (id_tipo_usuario);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public            postgres    false    205            �
           2606    16676    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    203            <   .   x�3�4�44���KL.�,��4202�54�54�3�8�b���� ��	2      D   U   x�3�p�	�t�t�4B_NsN##]CC]Cdf�gbrIfY>�	����K~QbJ"���j6��0�5B2��93�=F��� ���      B   '   x�3�44�LL.�,��4202�54�5��������� s2�      >   -   x�3�44�44�4�4202�54�50���2��� �MA�1z\\\ ��      @   ?   x�3�L�,I,�4202�54�50���2�L�O.�/JE�0�L��K�L/-JL���C������ ^-      :   C   x�3�LL����,.)JL�/�4202�54�56���2�L��L�+IE7�L�O.�+7�5 ��qqq ��3      8   �   x�m�MO�0�������6$�!�	Lq�.mA�#�O?��f���6�qT2��������k�9��&ښCp��9^(dl���`Wf�H#��;!B.�L��u!Y�袕�bb,�"H�XC6�v�U�s�yk��faU\�N�&��0��'YX-�2ISsz8ni_q�,�_y�@�9̪���c�7LXM|l��3<;n��wk/t��݇@� b����e_��(&͢�կ�+�rR�     