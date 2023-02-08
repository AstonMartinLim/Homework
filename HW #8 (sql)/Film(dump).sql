PGDMP                         {            film    12.4    12.4     5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16445    film    DATABASE     �   CREATE DATABASE film WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE film;
                postgres    false            �            1259    16457    actors    TABLE       CREATE TABLE public.actors (
    id integer NOT NULL,
    name character varying(200) DEFAULT 'unknown'::character varying NOT NULL,
    date_of_birth date DEFAULT '1990-01-01'::date NOT NULL,
    birth_place character varying(200) DEFAULT 'unknown'::character varying NOT NULL
);
    DROP TABLE public.actors;
       public         heap    postgres    false            �            1259    16481    actors_films    TABLE     v   CREATE TABLE public.actors_films (
    actor_id integer DEFAULT 0 NOT NULL,
    film_id integer DEFAULT 0 NOT NULL
);
     DROP TABLE public.actors_films;
       public         heap    postgres    false            �            1259    16455    actors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.actors_id_seq;
       public          postgres    false    205            9           0    0    actors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;
          public          postgres    false    204            �            1259    16468    films    TABLE     �   CREATE TABLE public.films (
    id integer NOT NULL,
    name character varying(200) DEFAULT 'unknown'::character varying NOT NULL,
    release_date date DEFAULT '1990-01-01'::date NOT NULL
);
    DROP TABLE public.films;
       public         heap    postgres    false            �            1259    16466    films_id_seq    SEQUENCE     �   CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.films_id_seq;
       public          postgres    false    207            :           0    0    films_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;
          public          postgres    false    206            �            1259    16448    genres    TABLE     �   CREATE TABLE public.genres (
    id integer NOT NULL,
    genre character varying(100) DEFAULT 'unknown'::character varying NOT NULL
);
    DROP TABLE public.genres;
       public         heap    postgres    false            �            1259    16486    genres_actors    TABLE     x   CREATE TABLE public.genres_actors (
    genre_id integer DEFAULT 0 NOT NULL,
    actor_id integer DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.genres_actors;
       public         heap    postgres    false            �            1259    16476    genres_films    TABLE     v   CREATE TABLE public.genres_films (
    genre_id integer DEFAULT 0 NOT NULL,
    film_id integer DEFAULT 0 NOT NULL
);
     DROP TABLE public.genres_films;
       public         heap    postgres    false            �            1259    16446    genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    203            ;           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          postgres    false    202            �
           2604    16460 	   actors id    DEFAULT     f   ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);
 8   ALTER TABLE public.actors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16471    films id    DEFAULT     d   ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);
 7   ALTER TABLE public.films ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    16451 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            -          0    16457    actors 
   TABLE DATA                 public          postgres    false    205   �       1          0    16481    actors_films 
   TABLE DATA                 public          postgres    false    209   �       /          0    16468    films 
   TABLE DATA                 public          postgres    false    207   �        +          0    16448    genres 
   TABLE DATA                 public          postgres    false    203   	"       2          0    16486    genres_actors 
   TABLE DATA                 public          postgres    false    210   �"       0          0    16476    genres_films 
   TABLE DATA                 public          postgres    false    208   �#       <           0    0    actors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.actors_id_seq', 11, true);
          public          postgres    false    204            =           0    0    films_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.films_id_seq', 12, true);
          public          postgres    false    206            >           0    0    genres_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genres_id_seq', 7, true);
          public          postgres    false    202            �
           2606    16465    actors actors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            postgres    false    205            �
           2606    16475    films films_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.films DROP CONSTRAINT films_pkey;
       public            postgres    false    207            �
           2606    16454    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    203            -   �  x���Oo1��|���H��e��'��D@�4����� �+�߾v��_`s��~?�y��j;��`�ڭ�R�ʿ`��:�SR��3	��iϿ�e}!���_4�t?G����R���
f|9)���*f�N��diT�h�x��������7���.��_[�x��nlQ�&�e�$D�-�j(��>i,��`;j� 6OhI<��4"t{Q��9E&�W�\*��|�C��|���#���I�Q��d܁-X��e~���xF3�V96𝭬9��$4$�jR���b��2�\��`�B�Z�{�hj�A�?�'���M�;��E�G��&X(���G�nՌ�R�fxE���a\�,�¨c�5U�;Ivk莤T���xVR�=�?�����Wv�h��c�|��L&��4�존U]�σI�`�)�#�ab�J�1=�|�~To{Z�
e*B]j�]�a�R�ovS����mhI'�?KTK����hUX��J���_�	Ԛ      1   �   x��Խ
�0�=OqG�P��DC'�@�PmWi�B@i����Z�'[��ι���SO�����f?����Z�������m��A1]�ù�(bM��,��D�̸a4e Q�D�)�+A	��P	jH�%d0J��8!qV(��F�ɂD�'�08	0�8"��M C~�K���� M)_      /   ]  x����n�0��<�o��LI)вSڄ�%S��8MltL���n��}9��}���T�yP�[��~9_�ގ��F�C��s�gsj������jưẖ�XC��7B�!1�	a���p|?P����5\m�t�$�
؜0J�,L0AVa��[ϕ黟�8� k�ʕ�B�yKfY��m�iyڒ/|�d��`�1�ΐUZ��[��Iv	u��`L�c�,���u�h��XԽ�O`�i�|ՏJB�C�4��!�Q9��P�JB���s����8DҀ�Z���q!�ۨ�i�41���jT!��w��YG�y�:�u��e��5l�Ӣ����d�%�>{gw�����F?,�?�      +   �   x���v
Q���W((M��L�KO�+J-V��L�Q �5�}B]�4u��K2���5��<I�kқR��WRZ�J�vc�v���ԔJ��� ���'��-O,"� S�E����k5juK�[L���@�!E�99�E �\\ �E��      2   �   x����
�@��O1G�%���-:u� �AZW)��B���7���z�����e��j*��H���1��{�������8Q���3�����.��9�(N��.*TH�@a�M2D=�2�7d�H@ �@�w�O�G$,#��i�M�E �@�I@4�#�0�&D=����E��G,a2ok�Z�W,D�'�,:z�BQ�_����FM      0   �   x����
�0�{�"���v�Ov(�7��)�)���M�7�skz�HB�c�5��b����9O鲸���8�4=f*~Ր���?J:mwǦ���dʍ� aq��D�dA��	����D	/BT�:|�$��_'J�i���B��<�%��H>�pF�E"�Q#��&�0��P���<8     