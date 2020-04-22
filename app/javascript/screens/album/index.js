import React, { Fragment} from 'react';
import NavbarFooter from '../../components/common/navbar_footer ';
import Albums from '../../components/albums';

const AlbumScreen = () => {
    return(
        <Fragment>
            <Albums />
           <NavbarFooter/>
        </Fragment>
    )
}

export default AlbumScreen;