<?php

namespace App\Repository;

use App\Entity\ArticleOnvaplusloin;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ArticleOnvaplusloin|null find($id, $lockMode = null, $lockVersion = null)
 * @method ArticleOnvaplusloin|null findOneBy(array $criteria, array $orderBy = null)
 * @method ArticleOnvaplusloin[]    findAll()
 * @method ArticleOnvaplusloin[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleOnvaplusloinRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ArticleOnvaplusloin::class);
    }

    // /**
    //  * @return ArticleOnvaplusloin[] Returns an array of ArticleOnvaplusloin objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?ArticleOnvaplusloin
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
