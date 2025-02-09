import axios from "axios";

const axiosInstance = axios.create ({
    baseURL: 'http://localhost:5029/api',
    headers: {
        'Content-Type': 'application/json',
    }
});