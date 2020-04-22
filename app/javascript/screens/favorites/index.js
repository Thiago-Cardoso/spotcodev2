import React, { Fragment} from 'react';
import NavbarFooter from '../../components/common/navbar_footer ';
import { Heading } from 'react-bulma-components';
import Favorites from '../../components/favorites';

const FavoritesScreen = () => {
    return(
        <Fragment>

          <Heading className='has-text-centered has-text-white'>Favoritos</Heading>
          <Favorites/>
        <NavbarFooter/>
      </Fragment>
    )
}

export default FavoritesScreen;