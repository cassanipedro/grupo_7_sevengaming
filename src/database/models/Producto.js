module.exports = (sequelize, dataTypes) => {
  let alias = "Productos";
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      unique: true,
    },
    name: {
      type: dataTypes.STRING,
      allowNull: false,
    },
    price: {
      type: dataTypes.STRING,
      allowNull: false,
    },
    categoryId: {
      type: dataTypes.STRING,
      allowNull: false,
    },
    description: {
      type: dataTypes.STRING,
      allowNull: false,
    },
    image: {
      type: dataTypes.STRING,
    },
  };
  let config = {
    tableName: "users",
    timestamps: false,
  };
  const Usuario = sequelize.define(alias, cols, config);
  return Usuario;
};
