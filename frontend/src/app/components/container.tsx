import styled from 'styled-components';

type Props = {
    children: React.ReactNode;
};

const StyleContainer = styled.div`
    width: calc(100% - 40px);
    background-color: #272727;
    margin: 0px 20px 50px;
`;

const Container = ({ children }: Props) => {
    return <StyleContainer>{children}</StyleContainer>;
};

export default Container;
