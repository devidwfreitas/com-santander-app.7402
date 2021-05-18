.class public Ldki;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:Lcom/google/android/gms/internal/zzato;


# direct methods
.method constructor <init>(Ldlv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p3, p0, Ldki;->a:Ljava/lang/String;

    iput-object p4, p0, Ldki;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Ldki;->c:Ljava/lang/String;

    iput-wide p5, p0, Ldki;->d:J

    iput-wide p7, p0, Ldki;->e:J

    iget-wide v0, p0, Ldki;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ldki;->e:J

    iget-wide v2, p0, Ldki;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Event created with reverse previous/current timestamps. appId"

    invoke-static {p3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1, p9}, Ldki;->a(Ldlv;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzato;

    move-result-object v0

    iput-object v0, p0, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    return-void
.end method

.method private constructor <init>(Ldlv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/zzato;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p9}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Ldki;->a:Ljava/lang/String;

    iput-object p4, p0, Ldki;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Ldki;->c:Ljava/lang/String;

    iput-wide p5, p0, Ldki;->d:J

    iput-wide p7, p0, Ldki;->e:J

    iget-wide v0, p0, Ldki;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ldki;->e:J

    iget-wide v2, p0, Ldki;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Event created with reverse previous/current timestamps. appId"

    invoke-static {p3}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iput-object p9, p0, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    return-void
.end method

.method static a(Ldlv;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzato;
    .locals 5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v3, "Param name can\'t be null"

    invoke-virtual {v0, v3}, Ldky;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v3

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ldou;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ldlv;->f()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->z()Ldky;

    move-result-object v3

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldlv;->o()Ldou;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v3}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzato;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method a(Ldlv;J)Ldki;
    .locals 12

    new-instance v1, Ldki;

    iget-object v3, p0, Ldki;->c:Ljava/lang/String;

    iget-object v4, p0, Ldki;->a:Ljava/lang/String;

    iget-object v5, p0, Ldki;->b:Ljava/lang/String;

    iget-wide v6, p0, Ldki;->d:J

    iget-object v10, p0, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    move-object v2, p1

    move-wide v8, p2

    invoke-direct/range {v1 .. v10}, Ldki;-><init>(Ldlv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/zzato;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ldki;->a:Ljava/lang/String;

    iget-object v1, p0, Ldki;->b:Ljava/lang/String;

    iget-object v2, p0, Ldki;->f:Lcom/google/android/gms/internal/zzato;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Event{appId=\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", name=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
