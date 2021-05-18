.class Lcmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcmg;

.field final synthetic b:Lcmh;


# direct methods
.method constructor <init>(Lcmh;Lcmg;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcmi;->b:Lcmh;

    iput-object p2, p0, Lcmi;->a:Lcmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcmi;->b:Lcmh;

    iget-object v1, p0, Lcmi;->a:Lcmg;

    invoke-virtual {v0, v1}, Lcmh;->a(Lcmg;)I

    .line 94
    return-void
.end method
