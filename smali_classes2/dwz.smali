.class final Ldwz;
.super Leaq;


# instance fields
.field private final a:Ldwb;


# direct methods
.method constructor <init>(Ldwb;)V
    .locals 0

    invoke-direct {p0}, Leaq;-><init>()V

    iput-object p1, p0, Ldwz;->a:Ldwb;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldwz;->a:Ldwb;

    invoke-interface {v0}, Ldwb;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ldwz;->a:Ldwb;

    invoke-interface {v0}, Ldwb;->b()V

    return-void
.end method
