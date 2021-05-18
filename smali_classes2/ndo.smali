.class Lndo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lndn;


# direct methods
.method constructor <init>(Lndn;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lndo;->c:Lndn;

    iput-object p2, p0, Lndo;->a:Landroid/view/View;

    iput p3, p0, Lndo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lndo;->c:Lndn;

    iget-object v1, p0, Lndo;->a:Landroid/view/View;

    iget v2, p0, Lndo;->b:I

    invoke-static {v0, v1, v2}, Lndn;->a(Lndn;Landroid/view/View;I)V

    .line 85
    return-void
.end method
