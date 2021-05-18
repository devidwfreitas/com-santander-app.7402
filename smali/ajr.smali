.class public Lajr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lajq;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "subProduct"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lajq;
    .locals 1

    iget-object v0, p0, Lajr;->a:Lajq;

    return-object v0
.end method

.method public a(Lajq;)V
    .locals 0

    iput-object p1, p0, Lajr;->a:Lajq;

    return-void
.end method
