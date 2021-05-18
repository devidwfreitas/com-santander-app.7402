.class public Lmjv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;


# direct methods
.method public constructor <init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lmjv;->c:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    iput-object p2, p0, Lmjv;->a:Ljava/util/List;

    iput p3, p0, Lmjv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 257
    new-instance v1, Lftq;

    invoke-direct {v1}, Lftq;-><init>()V

    .line 258
    iget-object v0, p0, Lmjv;->a:Ljava/util/List;

    iget v2, p0, Lmjv;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmjc;

    invoke-virtual {v0}, Lmjc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftq;->a(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lmjv;->a:Ljava/util/List;

    iget v2, p0, Lmjv;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmjc;

    invoke-virtual {v0}, Lmjc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftq;->b(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lmjv;->c:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    iget-object v2, p0, Lmjv;->a:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->a(Ljava/util/List;Lftq;)V

    .line 261
    return-void
.end method
