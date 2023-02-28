import React from 'react'

const Movie_list = (props) => {

    const {title, poster_path, release_date } = props.data;

    return (
        <div className="col">
            <div className="card h-100">
                <img src={poster_path} className="card-img-top shadow p-2 bg-body-tertiary rounded" alt={title} />
                <div className="card-body">
                    <h6 className="card-title">{title}</h6>
                    <p className="card-text badge rounded-pill text-bg-primary">{release_date}</p>
                </div>
            </div>
        </div>
    )
}

export default Movie_list