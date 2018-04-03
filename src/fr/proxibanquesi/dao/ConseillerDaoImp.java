package fr.proxibanquesi.dao;

import java.sql.*;
import fr.proxibanquesi.model.Conseiller;

public class ConseillerDaoImp extends DaoJDBC implements ConseillerDao {

	@Override
	public Conseiller obtenirConseiller(String login) {
		Connection cnx = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Conseiller conseiller = null;
		try {
			cnx = this.getConnection();
			String sql = "select * from `conseiller` where `login` = ?";
			pstmt = cnx.prepareStatement(sql);
			pstmt.setString(1, login);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int idconseiller = rs.getInt(1);
				String nom = rs.getString(2);
				String prenom = rs.getString(3);
				String pwd = rs.getString(5);
				conseiller = new Conseiller(prenom, nom, login, pwd);
				conseiller.setId(idconseiller);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeConnection(cnx, pstmt, rs);
		}
		return conseiller;
	}

}
