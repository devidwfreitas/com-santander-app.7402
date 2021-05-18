.class Ljia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljhw;


# direct methods
.method constructor <init>(Ljhw;I)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Ljia;->b:Ljhw;

    iput p2, p0, Ljia;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Ljia;->b:Ljhw;

    invoke-static {v0}, Ljhw;->a(Ljhw;)Ljie;

    move-result-object v1

    iget-object v0, p0, Ljia;->b:Ljhw;

    iget v2, p0, Ljia;->a:I

    invoke-virtual {v0, v2}, Ljhw;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdl;

    invoke-interface {v1, v0}, Ljie;->b(Ljdl;)V

    .line 280
    const-string v0, "onGroupClick"

    iget v1, p0, Ljia;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method
