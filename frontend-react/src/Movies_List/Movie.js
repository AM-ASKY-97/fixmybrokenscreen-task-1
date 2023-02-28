import axios from 'axios';
import React, { useEffect, useState } from 'react'
import Movie_list from './Movie_list';

const Movie = () => {

    const [value, setValue] = useState([]);
    const [loding, setLoding] = useState([true]);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api').then(res => {
            if (res.data.status === 200) {
                setValue(res.data.movie);
                setLoding(false);
            }
        })
    }, []);

    return (
        <div className='container my-4'>
            <h1 className='text-uppercase text-Secondary'>Top rated Movies</h1>

            <hr/>

            <div className='mt-3 row row-cols-2 row-cols-md-5 g-3'>
                {loding
                    ?
                    <div className='text-center'>
                        <div className="spinner-border text-primary" role="status">
                            <span className="visually-hidden">Loading...</span>
                        </div>
                    </div>
                    :
                    value.map((movie) => {
                        return (
                            <Movie_list data={movie} />
                        )
                    })
                }
            </div>
        </div>
    )
}

export default Movie