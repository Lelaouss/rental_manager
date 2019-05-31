<?php

namespace App\Repository;

use App\Entity\Property;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Property|null find($id, $lockMode = null, $lockVersion = null)
 * @method Property|null findOneBy(array $criteria, array $orderBy = null)
 * @method Property[]    findAll()
 * @method Property[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PropertyRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Property::class);
    }
    
    public function findAllActive()
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.banished is NULL')
            ->orderBy('p.idProperty', 'ASC')
			->getQuery()
			->setHint(\Doctrine\ORM\Query::HINT_INCLUDE_META_COLUMNS, true)
			->getArrayResult()
        ;
    }
}
