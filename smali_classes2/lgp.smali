.class public Llgp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Ljava/util/List",
        "<",
        "Lkps;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Llgp;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llgp;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Llgp;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;Ljava/util/List;)Ljava/util/List;

    .line 155
    iget-object v0, p0, Llgp;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->c(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V

    .line 156
    iget-object v0, p0, Llgp;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 157
    return-void
.end method
