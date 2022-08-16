From node:10 as builder

# where are we putting the code
WORKDIR /code

## Grab both package files
COPY package*.json ./

## install depends
RUN npm install

# Bring our code in
# which we really don't need to do. cause we're gonna trhow this image away.
COPY . .


# We can really get good here. 
# npm has a healthy cache, while we could evict that from the filesystem, the garbage cleanup isn't that beautiful,
# better to copy necessary over to fresh build and throw away the builder
# Also, this allows us to inject different params in different environments. 

from node:10 as runtime

#set working dir
WORKDIR /code

# bring over our depends
COPY --from=builder /code/node_modules .

#Bring our code in:
# we could have copied this from the builder but really we don't need it in there we should remove the code from the builder and just let it build depends
COPY . .

# Open the port. 
EXPOSE 8888

CMD ["npm", "start"]
