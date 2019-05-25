DELETE FROM edge;

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Why do you want to learn programming?'),
    (SELECT pk_id FROM node WHERE content = 'Make money')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Why do you want to learn programming?'),
    (SELECT pk_id FROM node WHERE content = 'For my kids')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'For my kids'),
    (SELECT pk_id FROM node WHERE content = 'Start with Scratch, then move on to...')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Start with Scratch, then move on to...'),
    (SELECT pk_id FROM node WHERE content = 'Python')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Why do you want to learn programming?'),
    (SELECT pk_id FROM node WHERE content = 'I don''t know just pick one for me')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I don''t know just pick one for me'),
    (SELECT pk_id FROM node WHERE content = 'Python')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Why do you want to learn programming?'),
    (SELECT pk_id FROM node WHERE content = 'Just for fun')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Why do you want to learn programming?'),
    (SELECT pk_id FROM node WHERE content = 'Improve myself')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Why do you want to learn programming?'),
    (SELECT pk_id FROM node WHERE content = 'I''m interested')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Just for fun'),
    (SELECT pk_id FROM node WHERE content = 'Have a brilliant idea/platform in mind?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I''m interested'),
    (SELECT pk_id FROM node WHERE content = 'Have a brilliant idea/platform in mind?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Improve myself'),
    (SELECT pk_id FROM node WHERE content = 'Have a brilliant idea/platform in mind?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Have a brilliant idea/platform in mind?'),
    (SELECT pk_id FROM node WHERE content = '<b>Nope.</b> Just want to get started')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = '<b>Nope.</b> Just want to get started'),
    (SELECT pk_id FROM node WHERE content = 'I prefer to learn things...')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I prefer to learn things...'),
    (SELECT pk_id FROM node WHERE content = 'The easy way')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I prefer to learn things...'),
    (SELECT pk_id FROM node WHERE content = 'The best way')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'The easy way'),
    (SELECT pk_id FROM node WHERE content = 'Python')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'The best way'),
    (SELECT pk_id FROM node WHERE content = 'Python')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I prefer to learn things...'),
    (SELECT pk_id FROM node WHERE content = 'The slightly harder way')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'The slightly harder way'),
    (SELECT pk_id FROM node WHERE content = 'Auto or manual car?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Auto or manual car?'),
    (SELECT pk_id FROM node WHERE content = 'Auto')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Auto or manual car?'),
    (SELECT pk_id FROM node WHERE content = 'Manual')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Auto'),
    (SELECT pk_id FROM node WHERE content = 'Java')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Manual'),
    (SELECT pk_id FROM node WHERE content = 'C')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I prefer to learn things...'),
    (SELECT pk_id FROM node WHERE content = 'The really hard way (but easier to pick up other languages in the future)')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'The really hard way (but easier to pick up other languages in the future)'),
    (SELECT pk_id FROM node WHERE content = 'C++')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Make money'),
    (SELECT pk_id FROM node WHERE content = 'I have a startup idea!')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I have a startup idea!'),
    (SELECT pk_id FROM node WHERE content = 'Which platform/field?' LIMIT 1)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Have a brilliant idea/platform in mind?'),
    (SELECT pk_id FROM node WHERE content = 'YES' LIMIT 1)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'YES'
        AND np.content = 'Have a brilliant idea/platform in mind?'
    ),
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'I have a startup idea!'
    )
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'I have a startup idea!'
    ),
     (SELECT pk_id FROM node WHERE content = 'Web' LIMIT 1)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Web'
        AND np.content = 'Which platform/field?'
    ),
     (SELECT pk_id FROM node WHERE content = 'Does your web app provides info in real-time, like twitter?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Does your web app provides info in real-time, like twitter?'),
     (SELECT pk_id FROM node WHERE content = 'YES' AND (SELECT COUNT(*) FROM edge WHERE fk_next_node = pk_id) = 0)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'YES'
        AND np.content = 'Does your web app provides info in real-time, like twitter?'
    ),
     (SELECT pk_id FROM node WHERE content = 'JavaScript')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Does your web app provides info in real-time, like twitter?'),
     (SELECT pk_id FROM node WHERE content = 'NO' LIMIT 1)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'NO'
        AND np.content = 'Does your web app provides info in real-time, like twitter?'
    ),
     (SELECT pk_id FROM node WHERE content = 'Do you want to try something new with huge potential, but less mature?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Do you want to try something new with huge potential, but less mature?'),
     (SELECT pk_id FROM node WHERE content = '<b>NOT SURE</b>' AND (SELECT COUNT(*) FROM edge WHERE fk_next_node = pk_id) = 0)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Do you want to try something new with huge potential, but less mature?'),
     (SELECT pk_id FROM node WHERE content = '<b>NO</b>' AND (SELECT COUNT(*) FROM edge WHERE fk_next_node = pk_id) = 0)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = '<b>NO</b>'
        AND np.content = 'Do you want to try something new with huge potential, but less mature?'
    ),
     (SELECT pk_id FROM node WHERE content = 'Which one is your favorite toy?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = '<b>NOT SURE</b>'
        AND np.content = 'Do you want to try something new with huge potential, but less mature?'
    ),
     (SELECT pk_id FROM node WHERE content = 'Which one is your favorite toy?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Which one is your favorite toy?'),
     (SELECT pk_id FROM node WHERE content = 'Lego')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Which one is your favorite toy?'),
     (SELECT pk_id FROM node WHERE content = 'Play-Doh')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Which one is your favorite toy?'),
     (SELECT pk_id FROM node WHERE content = 'I''ve an old & ugly toy, but i love it so much!')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Lego'),
     (SELECT pk_id FROM node WHERE content = 'Python')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Play-Doh'),
     (SELECT pk_id FROM node WHERE content = 'Ruby')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'I''ve an old & ugly toy, but i love it so much!'),
     (SELECT pk_id FROM node WHERE content = 'PHP')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Make money'),
     (SELECT pk_id FROM node WHERE content = 'Get a job')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (SELECT pk_id FROM node WHERE content = 'Get a job'),
     (SELECT pk_id FROM node WHERE content = 'Which platform/field?' AND (SELECT COUNT(*) FROM edge WHERE fk_next_node = pk_id) = 0)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'Get a job'
    ),
    (SELECT pk_id FROM node WHERE content = 'I want to work for big tech companies')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I want to work for big tech companies'),
    (SELECT pk_id FROM node WHERE content = 'Facebook')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I want to work for big tech companies'),
    (SELECT pk_id FROM node WHERE content = 'Google')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I want to work for big tech companies'),
    (SELECT pk_id FROM node WHERE content = 'Microsoft')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I want to work for big tech companies'),
    (SELECT pk_id FROM node WHERE content = 'Apple')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Facebook'),
    (SELECT pk_id FROM node WHERE content = 'Python')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Microsoft'),
    (SELECT pk_id FROM node WHERE content = 'C#')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Google'),
    (SELECT pk_id FROM node WHERE content = 'Python')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Apple'),
    (SELECT pk_id FROM node WHERE content = 'Objective-C')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'Get a job'
    ),
    (SELECT pk_id FROM node WHERE content = '3D/Gaming')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = '3D/Gaming'),
    (SELECT pk_id FROM node WHERE content = 'C++')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'I have a startup idea!'
    ),
    (SELECT pk_id FROM node WHERE content = '3D/Gaming')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'Get a job'
    ),
    (SELECT pk_id FROM node WHERE content = 'Mobile')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'I have a startup idea!'
    ),
    (SELECT pk_id FROM node WHERE content = 'Mobile')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Mobile'),
    (SELECT pk_id FROM node WHERE content = 'Which OS?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Which OS?'),
    (SELECT pk_id FROM node WHERE content = 'iOS')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Which OS?'),
    (SELECT pk_id FROM node WHERE content = 'Android')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'iOS'),
    (SELECT pk_id FROM node WHERE content = 'Objective-C')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'iOS'),
    (SELECT pk_id FROM node WHERE content = 'Java')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'I have a startup idea!'
    ),
    (SELECT pk_id FROM node WHERE content = 'Enterprise')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
     (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'Get a job'
    ),
    (SELECT pk_id FROM node WHERE content = 'Enterprise')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Enterprise'),
    (SELECT pk_id FROM node WHERE content = 'What do you think about Microsoft?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'What do you think about Microsoft?'),
    (SELECT pk_id FROM node WHERE content = 'I''m a fan!')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'What do you think about Microsoft?'),
    (SELECT pk_id FROM node WHERE content = 'Not Bad')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'What do you think about Microsoft?'),
    (SELECT pk_id FROM node WHERE content = 'Suck')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I''m a fan!'),
    (SELECT pk_id FROM node WHERE content = 'C#')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Not Bad'),
    (SELECT pk_id FROM node WHERE content = 'Java')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Suck'),
    (SELECT pk_id FROM node WHERE content = 'Java')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'Get a job'
    ),
    (SELECT pk_id FROM node WHERE content = 'Web' AND (SELECT COUNT(*) FROM edge WHERE fk_next_node = pk_id) = 0)
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        INNER JOIN edge ep
        ON ep.fk_next_node = np.pk_id
        INNER JOIN node npp
        ON ep.fk_prev_node = npp.pk_id
        WHERE n.content = 'Web'
        AND np.content = 'Which platform/field?'
        AND npp.content = 'Get a job'
    ),
    (SELECT pk_id FROM node WHERE content = 'Front-end (web interface)')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        INNER JOIN edge ep
        ON ep.fk_next_node = np.pk_id
        INNER JOIN node npp
        ON ep.fk_prev_node = npp.pk_id
        WHERE n.content = 'Web'
        AND np.content = 'Which platform/field?'
        AND npp.content = 'Get a job'
    ),
    (SELECT pk_id FROM node WHERE content = 'Back-end ("brain" behind a website)')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Front-end (web interface)'),
    (SELECT pk_id FROM node WHERE content = 'JavaScript')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Back-end ("brain" behind a website)'),
    (SELECT pk_id FROM node WHERE content = 'I want to work for...')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I want to work for...'),
    (SELECT pk_id FROM node WHERE content = 'Corporate')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Corporate'),
    (SELECT pk_id FROM node WHERE content = 'What do you think about Microsoft?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'I want to work for...'),
    (SELECT pk_id FROM node WHERE content = 'Startup')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Startup'),
    (SELECT pk_id FROM node WHERE content = 'Do you want to try something new with huge potential, but less mature?')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (
        SELECT n.pk_id FROM node n
        INNER JOIN edge e
        ON e.fk_next_node = n.pk_id
        INNER JOIN node np
        ON e.fk_prev_node = np.pk_id
        WHERE n.content = 'Which platform/field?'
        AND np.content = 'Get a job'
    ),
    (SELECT pk_id FROM node WHERE content = 'Doesn''t matter, I just want \$\$\$')
);

INSERT INTO edge (fk_prev_node, fk_next_node) 
VALUES (
    (SELECT pk_id FROM node WHERE content = 'Doesn''t matter, I just want \$\$\$'),
    (SELECT pk_id FROM node WHERE content = 'Java')
);