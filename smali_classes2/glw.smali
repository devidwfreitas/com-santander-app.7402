.class Lglw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lglu;


# direct methods
.method constructor <init>(Lglu;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lglw;->a:Lglu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lglw;->a:Lglu;

    invoke-static {v0}, Lglu;->a(Lglu;)V

    .line 114
    return-void
.end method
