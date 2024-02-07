cmake_minimum_required(VERSION 3.15)
project(UnigineProj)

#find_package(opengl-registry REQUIRED)

# Объявление исходных файлов
set(SOURCE_FILES
    main.cpp
    glapp.cpp
    alapp.cpp
    engine.cpp
    parser.cpp
    font.cpp
    console.cpp
    frustum.cpp
    bsp.cpp
    position.cpp
    pbuffer.cpp
    texture.cpp
    shader.cpp
    material.cpp
    light.cpp
    flare.cpp
    fog.cpp
    mirror.cpp
    object.cpp
    mesh.cpp
    meshvbo.cpp
    objectmesh.cpp
    skinnedmesh.cpp
    objectskinnedmesh.cpp
    particles.cpp
    objectparticles.cpp
    physic.cpp
    rigidbody.cpp
    collide.cpp
    joint.cpp
    ragdoll.cpp
    map.cpp
)


add_executable(main ${SOURCE_FILES})

#target_link_libraries(${PROJECT_NAME} opengl-registry::opengl-registry)