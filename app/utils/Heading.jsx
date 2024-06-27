import React from "react";


const Heading = ({ title, description, keywords }) => {
  return (
    <head>
      <title>{title}</title>
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta name="description" content={description} />
      <meta name="keywords" content={keywords} />
    </head>
  );
};

export default Heading;