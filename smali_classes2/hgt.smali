.class public Lhgt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhfz;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lhgt;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoDividaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "?"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "?"

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhga;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
