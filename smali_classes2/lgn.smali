.class public Llgn;
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
        "Lkny;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Llgn;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llgn;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkny;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Llgn;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Llgn;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->a(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;Ljava/util/List;)Ljava/util/List;

    .line 111
    iget-object v0, p0, Llgn;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->a(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V

    goto :goto_0
.end method
