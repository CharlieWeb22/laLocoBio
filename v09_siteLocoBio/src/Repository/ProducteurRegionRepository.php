<?php

namespace App\Repository;

use App\Entity\ProducteurRegion;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ProducteurRegion|null find($id, $lockMode = null, $lockVersion = null)
 * @method ProducteurRegion|null findOneBy(array $criteria, array $orderBy = null)
 * @method ProducteurRegion[]    findAll()
 * @method ProducteurRegion[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProducteurRegionRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ProducteurRegion::class);
    }

    // /**
    //  * @return ProducteurRegion[] Returns an array of ProducteurRegion objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?ProducteurRegion
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
