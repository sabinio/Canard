CREATE TABLE [dbo].[lotso_data] (
	pokemon_id INTEGER NOT NULL, 
	version_group_id INTEGER NOT NULL, 
	move_id INTEGER NOT NULL, 
	pokemon_move_method_id INTEGER NOT NULL, 
	pokemon_level INTEGER NOT NULL, 
	pkmn_moves_order INTEGER, 
	CONSTRAINT pk_pokemon_moves_pokemon_id_version_group_id_move_id_pokemon_move_method_id_level PRIMARY KEY (pokemon_id, version_group_id, move_id, pokemon_move_method_id, pokemon_level), 
	
);
GO
CREATE INDEX ix_pokemon_moves_version_group_id ON [dbo].[lotso_data] (version_group_id);
GO
CREATE INDEX ix_pokemon_moves_pokemon_move_method_id ON [dbo].[lotso_data] (pokemon_move_method_id);
GO
CREATE INDEX ix_pokemon_moves_pokemon_id ON [dbo].[lotso_data] (pokemon_id);
GO
CREATE INDEX ix_pokemon_moves_move_id ON [dbo].[lotso_data] (move_id);
GO
CREATE INDEX ix_pokemon_moves_level ON [dbo].[lotso_data] (pokemon_level);