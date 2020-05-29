<?php

namespace App\Repository;

use App\Entity\ArticleOnvapluloin;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ArticleOnvapluloin|null find($id, $lockMode = null, $lockVersion = null)
 * @method ArticleOnvapluloin|null findOneBy(array $criteria, array $orderBy = null)
 * @method ArticleOnvapluloin[]    findAll()
 * @method ArticleOnvapluloin[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleOnvapluloinRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ArticleOnvapluloin::class);
    }

    // /**
    //  * @return ArticleOnvapluloin[] Returns an array of ArticleOnvapluloin objects
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
    public function findOneBySomeField($value): ?ArticleOnvapluloin
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
