import profilepic from '../public/vite.svg';
import './card.css';

export default function Cart() {

    return (
        <div className="vite-card">
            <img src={profilepic} alt="Vite image" className='vite-cad-icon' height={100}/>
            <h2 className='vite-card-title'>Vite</h2>
            <p className='vite-card-subtitle'>Biblioteca de desenvolvimento de site</p>
        </div>
    );
}