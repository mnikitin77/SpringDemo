PGDMP         &    
            x            spring_demo    12.2    12.2 (    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    92900    spring_demo    DATABASE     �   CREATE DATABASE spring_demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE spring_demo;
                postgres    false            �            1259    92971    products    TABLE     v   CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255),
    price double precision
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    92969    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    203            4           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    202            �            1259    92979    roles    TABLE     `   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    92977    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    205            5           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    204            �            1259    92987    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    enabled boolean NOT NULL,
    password character varying(255) NOT NULL,
    username character varying(255) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    92985    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    207            6           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    206            �            1259    93000    users_roles    TABLE     `   CREATE TABLE public.users_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.users_roles;
       public         heap    postgres    false            �            1259    92998    users_roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_roles_role_id_seq;
       public          postgres    false    210            7           0    0    users_roles_role_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_roles_role_id_seq OWNED BY public.users_roles.role_id;
          public          postgres    false    209            �            1259    92996    users_roles_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_roles_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_roles_user_id_seq;
       public          postgres    false    210            8           0    0    users_roles_user_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_roles_user_id_seq OWNED BY public.users_roles.user_id;
          public          postgres    false    208            �
           2604    92974    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    92982    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    92990    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    93003    users_roles user_id    DEFAULT     z   ALTER TABLE ONLY public.users_roles ALTER COLUMN user_id SET DEFAULT nextval('public.users_roles_user_id_seq'::regclass);
 B   ALTER TABLE public.users_roles ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    210    208    210            �
           2604    93004    users_roles role_id    DEFAULT     z   ALTER TABLE ONLY public.users_roles ALTER COLUMN role_id SET DEFAULT nextval('public.users_roles_role_id_seq'::regclass);
 B   ALTER TABLE public.users_roles ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    210    209    210            &          0    92971    products 
   TABLE DATA           3   COPY public.products (id, name, price) FROM stdin;
    public          postgres    false    203   �*       (          0    92979    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    205   �-       *          0    92987    users 
   TABLE DATA           @   COPY public.users (id, enabled, password, username) FROM stdin;
    public          postgres    false    207   �-       -          0    93000    users_roles 
   TABLE DATA           7   COPY public.users_roles (user_id, role_id) FROM stdin;
    public          postgres    false    210   1/       9           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 24, true);
          public          postgres    false    202            :           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 5, true);
          public          postgres    false    204            ;           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    206            <           0    0    users_roles_role_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_roles_role_id_seq', 1, false);
          public          postgres    false    209            =           0    0    users_roles_user_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_roles_user_id_seq', 1, false);
          public          postgres    false    208            �
           2606    92976    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    203            �
           2606    92984    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    205            �
           2606    93008 "   roles uk_ofx66keruapi6vyqpv6f2or37 
   CONSTRAINT     ]   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT uk_ofx66keruapi6vyqpv6f2or37 UNIQUE (name);
 L   ALTER TABLE ONLY public.roles DROP CONSTRAINT uk_ofx66keruapi6vyqpv6f2or37;
       public            postgres    false    205            �
           2606    93010 "   users uk_r43af9ap4edm43mmtq01oddj6 
   CONSTRAINT     a   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_r43af9ap4edm43mmtq01oddj6 UNIQUE (username);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_r43af9ap4edm43mmtq01oddj6;
       public            postgres    false    207            �
           2606    92995    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    207            �
           2606    93006    users_roles users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (role_id, user_id);
 F   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT users_roles_pkey;
       public            postgres    false    210    210            �
           2606    93016 '   users_roles fk2o0jvgh89lemvvo17cbqvdxaa    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa FOREIGN KEY (user_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa;
       public          postgres    false    2722    210    207            �
           2606    93011 '   users_roles fkj6m8fwv7oqv74fcehir1a9ffy    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES public.roles(id);
 Q   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy;
       public          postgres    false    210    205    2716            &     x��TMkSQ]��+.w��ݗ��,�]�tS��BW��&Q�X��R[Q*����ٗ�%������3s_ڦ(��4��9s�̙��>Q�v\70n@s��oJ9��̽���S������RI��4Rq�#Eo�x�Pn�)]������5C|� ��,�5U��T�DV���(Z�x������a��$�T�Հ��ѱ�ק
�#�
}��u9�ђ���³�#�U�D��G��w
��o��[�La�l�5�*�Ec���xu}���5�F��	������P��IZ�ᡱ��^ӨN��љ��������M��l{ˀ;��B+#�w%_�2�Ȭ��kf�}��	z� ��Ă�6���9�z"W���%�Yφ��Bݹe[~}|�	�$3�o6d�x��R�ĻN����;���> UbJ�Z�M��^?�4(�o�Aa�҄��;��(N�xV2=���6b�<k#m�;Af}�.:)X�<a�-�ceK�5��]��/}f~XI��l�
f.,
q�9w Z�$�0��+��k�� Z��KSeS�-��0��^4��R�s�C֧�FX��i`l´�Rm���L�ư
�Z�!�J�1�X>A�Z��&�S��4�6]I���~�B�ڒX��1��dV���d�������Qô"�/�)�X�A��X+o����n<267�d�ƟN.0��˂r��oL+�T�%ص�`vv9ƒ!ވ�s޽��!3�*�
�H4�*X�o"�#���w��V�����f�ې{�oݟ��DrZl��Q�?�~��Z�r+�      (   E   x�3���q�v�2��]|=���!��� � ��	T6�3> ��%�9$>��х�S��Ǉ+F��� �^�      *   $  x�E�Kr�0  �5��m\�*(X���t�~�@�����.��Ai�Y@u�(��}<a�4�'�*�X�Fa΄�Z������� ɏ�����ڬD��� �
�YBc��V8����� 7�/���=6w�(A۬ɤ�w{R�L�`j���,�<Y�yk}��.9�!>��ebv�����uâ�I$mh+3�5��?(8s��~�y���-(vt�qB��\O�R�x����⯁H��/��r�LD �[�
����Ϸ�  �o,5�W~�&V_cZrj3�~ў��Ȳ���r�      -   $   x�3�4�2cc.c m�i�e�i�e
Ʀ\1z\\\ T�o     