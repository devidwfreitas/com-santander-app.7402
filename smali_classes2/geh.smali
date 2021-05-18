.class Lgeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgec;

.field final synthetic b:Lgeg;


# direct methods
.method constructor <init>(Lgeg;Lgec;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lgeh;->b:Lgeg;

    iput-object p2, p0, Lgeh;->a:Lgec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgeh;->a:Lgec;

    invoke-virtual {v0}, Lgec;->c()Lged;

    move-result-object v0

    invoke-interface {v0}, Lged;->a()V

    .line 45
    return-void
.end method
