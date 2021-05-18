.class Lgmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgmo;


# direct methods
.method constructor <init>(Lgmo;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lgmp;->a:Lgmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lgmp;->a:Lgmo;

    invoke-static {v0}, Lgmo;->a(Lgmo;)V

    .line 227
    return-void
.end method
