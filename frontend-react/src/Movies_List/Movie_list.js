import React from 'react'

const Movie_list = (props) => {

    const { title, poster_path, release_date } = props.data;

    return (
        <div class="col">
            <div class="card h-100  ">
                <img src={poster_path} class="card-img-top shadow p-2 bg-body-tertiary rounded" alt={title} />
                <div class="card-body">
                    <h5 class="card-title">{title}</h5>
                    <p class="card-text">{release_date}</p>
                </div>
            </div>
        </div>
    )
}

export default Movie_list