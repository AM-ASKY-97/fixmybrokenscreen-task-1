import axios from 'axios';
import React, { useEffect, useState } from 'react'
import Movie_list from './Movie_list';

const Movie = () => {

    const [data, setData] = useState([]);
    const [currentPage, setCurrentPage] = useState(1);
    const [totalPages, setTotalPages] = useState(0);
    const [loding, setLoding] = useState([true]);

    useEffect(() => {
        fetchData();
    }, [currentPage]);

    const fetchData = async () => {
        const response = await axios.get(`http://127.0.0.1:8000/api?page=${currentPage}`);
        setData(response.data.data);
        setTotalPages(response.data.last_page);
        setLoding(false);
    };
    

    const handlePreviousPage = () => {
        setCurrentPage(currentPage - 1);
    };

    const handleNextPage = () => {
        setCurrentPage(currentPage + 1);
    };


    return (
        <div className='container my-4'>
            <h1 className='text-uppercase text-secondary'>Top rated Movies</h1>

            <hr />

            <div className='mt-3 row row-cols-2 row-cols-md-5 g-3'>
                {loding
                    ?
                    <div className='text-center'>
                        <div className="spinner-border text-primary" role="status">
                            <span className="visually-hidden">Loading...</span>
                        </div>
                    </div>
                    :
                    data.map((movie) => {
                        return (
                            <Movie_list data={movie} />
                        )
                    })
                }
            </div>

            <div className='float-end my-5'>
                <div>
                    Page {currentPage} of {totalPages}
                </div>

                <div className="btn-group" role="group" aria-label="Basic outlined example">
                    <button onClick={handlePreviousPage} disabled={currentPage === 1} type="button" className="btn btn-outline-primary">Previous Page</button>
                    <button onClick={handleNextPage} disabled={currentPage === totalPages} type="button" className="btn btn-outline-primary">Next Page</button>
                </div>
            </div>
        </div>
    )
}

export default Movie