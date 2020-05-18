INSERT INTO users (username, password, enabled)
VALUES
( 'user' , '$2a$10$wg/H8RtJy8fiWfxrn/xvluj1WOfryFX32lpNUYB1t7DKwNU4cqF1a' , TRUE ),
( 'superuser' , '$2a$10$WykvetLyr0116j14IMdkYO8mmaCsNfvDgzYVNeFULsY6H9WcUEeme' , TRUE ),
( 'admin' , '$2a$10$n.xmFdiH70Sx7j6hvl3I3upcLuo4yTnxGryCOpnG9x6dGFc47iaQ2' , TRUE ),
( 'api-user' , '$2a$10$pm/C6.qUNSuJ.Kj3QXuNKO.GgiYF3rPRUg2/bRg50YYxku79bYZta' , TRUE ),
( 'api-admin' , '$2a$10$6Ua.1ln8b1JdhKNUsfEyg.J.anVuD70OIkKe1smX0AXijui8rGoV2' , TRUE );

INSERT INTO roles ("name")
VALUES
('ROLE_USER'),
('ROLE_ADMIN'),
('ROLE_SUPERUSER'),
('ROLE_API_PRODUCT_READ'),
('ROLE_API_PRODUCT_ALL');

INSERT INTO users_roles
VALUES
( 1 , 1 ),
( 2 , 1 ),
( 2 , 3 ),
( 3 , 1 ),
( 3 , 2 ),
( 4 , 4 ),
( 5 , 4 ),
( 5 , 5 );
