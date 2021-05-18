.class public Ldou;
.super Ldmu;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private b:I


# direct methods
.method constructor <init>(Ldlv;)V
    .locals 4

    invoke-direct {p0, p1}, Ldmu;-><init>(Ldlv;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ldou;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private a(ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Double;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_2
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_8

    instance-of v1, p2, Ljava/lang/Character;

    if-nez v1, :cond_8

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_9
    move-object p2, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catchall_2
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ldox;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nevent_filter {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "filter_id"

    iget-object v3, p0, Ldox;->a:Ljava/lang/Integer;

    invoke-static {v1, v0, v2, v3}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_name"

    iget-object v3, p0, Ldox;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_count_filter"

    iget-object v3, p0, Ldox;->e:Ldoz;

    invoke-static {v1, v6, v2, v3}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ldoz;)V

    const-string v2, "  filters {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldox;->c:[Ldoy;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const/4 v5, 0x2

    invoke-static {v1, v5, v4}, Ldou;->a(Ljava/lang/StringBuilder;ILdoy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v6}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ldpa;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    iget-object v2, p0, Ldpa;->a:Ljava/lang/Integer;

    invoke-static {v0, v3, v1, v2}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "property_name"

    iget-object v2, p0, Ldpa;->b:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p0, Ldpa;->c:Ldoy;

    invoke-static {v0, v1, v2}, Ldou;->a(Ljava/lang/StringBuilder;ILdoy;)V

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;ILdoy;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complement"

    iget-object v1, p2, Ldoy;->c:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "param_name"

    iget-object v1, p2, Ldoy;->d:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p1, 0x1

    const-string v1, "string_filter"

    iget-object v2, p2, Ldoy;->a:Ldpb;

    invoke-static {p0, v0, v1, v2}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ldpb;)V

    add-int/lit8 v0, p1, 0x1

    const-string v1, "number_filter"

    iget-object v2, p2, Ldoy;->b:Ldoz;

    invoke-static {p0, v0, v1, v2}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ldoz;)V

    invoke-static {p0, p1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;ILdpl;)V
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "bundle {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "protocol_version"

    iget-object v1, p2, Ldpl;->a:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "platform"

    iget-object v1, p2, Ldpl;->i:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "gmp_version"

    iget-object v1, p2, Ldpl;->q:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "uploading_gmp_version"

    iget-object v1, p2, Ldpl;->r:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "config_version"

    iget-object v1, p2, Ldpl;->G:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "gmp_app_id"

    iget-object v1, p2, Ldpl;->y:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_id"

    iget-object v1, p2, Ldpl;->o:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_version"

    iget-object v1, p2, Ldpl;->p:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_version_major"

    iget-object v1, p2, Ldpl;->C:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_version_minor"

    iget-object v1, p2, Ldpl;->D:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_version_release"

    iget-object v1, p2, Ldpl;->E:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "firebase_instance_id"

    iget-object v1, p2, Ldpl;->B:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dev_cert_hash"

    iget-object v1, p2, Ldpl;->v:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_store"

    iget-object v1, p2, Ldpl;->n:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "upload_timestamp_millis"

    iget-object v1, p2, Ldpl;->d:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "start_timestamp_millis"

    iget-object v1, p2, Ldpl;->e:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "end_timestamp_millis"

    iget-object v1, p2, Ldpl;->f:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "previous_bundle_start_timestamp_millis"

    iget-object v1, p2, Ldpl;->g:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "previous_bundle_end_timestamp_millis"

    iget-object v1, p2, Ldpl;->h:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_instance_id"

    iget-object v1, p2, Ldpl;->u:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "resettable_device_id"

    iget-object v1, p2, Ldpl;->s:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "device_id"

    iget-object v1, p2, Ldpl;->F:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "limited_ad_tracking"

    iget-object v1, p2, Ldpl;->t:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "os_version"

    iget-object v1, p2, Ldpl;->j:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "device_model"

    iget-object v1, p2, Ldpl;->k:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "user_default_language"

    iget-object v1, p2, Ldpl;->l:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "time_zone_offset_minutes"

    iget-object v1, p2, Ldpl;->m:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bundle_sequential_index"

    iget-object v1, p2, Ldpl;->w:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "service_upload"

    iget-object v1, p2, Ldpl;->z:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "health_monitor"

    iget-object v1, p2, Ldpl;->x:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p2, Ldpl;->H:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "android_id"

    iget-object v1, p2, Ldpl;->H:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p2, Ldpl;->c:[Ldpn;

    invoke-static {p0, p1, v0}, Ldou;->a(Ljava/lang/StringBuilder;I[Ldpn;)V

    iget-object v0, p2, Ldpl;->A:[Ldph;

    invoke-static {p0, p1, v0}, Ldou;->a(Ljava/lang/StringBuilder;I[Ldph;)V

    iget-object v0, p2, Ldpl;->b:[Ldpi;

    invoke-static {p0, p1, v0}, Ldou;->a(Ljava/lang/StringBuilder;I[Ldpi;)V

    invoke-static {p0, p1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ldoz;)V
    .locals 2

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Ldoz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "UNKNOWN_COMPARISON_TYPE"

    iget-object v1, p3, Ldoz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    const-string v1, "comparison_type"

    invoke-static {p0, p1, v1, v0}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "match_as_float"

    iget-object v1, p3, Ldoz;->b:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "comparison_value"

    iget-object v1, p3, Ldoz;->c:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "min_comparison_value"

    iget-object v1, p3, Ldoz;->d:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "max_comparison_value"

    iget-object v1, p3, Ldoz;->e:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v0, "LESS_THAN"

    goto :goto_1

    :pswitch_1
    const-string v0, "GREATER_THAN"

    goto :goto_1

    :pswitch_2
    const-string v0, "EQUAL"

    goto :goto_1

    :pswitch_3
    const-string v0, "BETWEEN"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ldpb;)V
    .locals 5

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Ldpb;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "UNKNOWN_MATCH_TYPE"

    iget-object v1, p3, Ldpb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    const-string v1, "match_type"

    invoke-static {p0, p1, v1, v0}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "expression"

    iget-object v1, p3, Ldpb;->b:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "case_sensitive"

    iget-object v1, p3, Ldpb;->c:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p3, Ldpb;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "expression_list {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Ldpb;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "REGEXP"

    goto :goto_1

    :pswitch_1
    const-string v0, "BEGINS_WITH"

    goto :goto_1

    :pswitch_2
    const-string v0, "ENDS_WITH"

    goto :goto_1

    :pswitch_3
    const-string v0, "PARTIAL"

    goto :goto_1

    :pswitch_4
    const-string v0, "EXACT"

    goto :goto_1

    :pswitch_5
    const-string v0, "IN_LIST"

    goto :goto_1

    :cond_2
    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p0, p1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ldpm;)V
    .locals 11

    const/16 v10, 0xa

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Ldpm;->b:[J

    if-eqz v1, :cond_3

    add-int/lit8 v1, v4, 0x1

    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, "results: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Ldpm;->b:[J

    array-length v6, v5

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v1, v6, :cond_2

    aget-wide v8, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    add-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_1

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p3, Ldpm;->a:[J

    if-eqz v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, "status: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Ldpm;->a:[J

    array-length v5, v3

    move v1, v0

    :goto_2
    if-ge v0, v5, :cond_5

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-static {p0, v4}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;I[Ldph;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, "audience_membership {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "audience_id"

    iget-object v5, v3, Ldph;->a:Ljava/lang/Integer;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "new_audience"

    iget-object v5, v3, Ldph;->d:Ljava/lang/Boolean;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "current_data"

    iget-object v5, v3, Ldph;->b:Ldpm;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ldpm;)V

    const-string v4, "previous_data"

    iget-object v3, v3, Ldph;->c:Ldpm;

    invoke-static {p0, v1, v4, v3}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ldpm;)V

    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "}\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a(Ljava/lang/StringBuilder;I[Ldpi;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, "event {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    iget-object v5, v3, Ldpi;->b:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "timestamp_millis"

    iget-object v5, v3, Ldpi;->c:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "previous_timestamp_millis"

    iget-object v5, v3, Ldpi;->d:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "count"

    iget-object v5, v3, Ldpi;->e:Ljava/lang/Integer;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v3, Ldpi;->a:[Ldpj;

    invoke-static {p0, v1, v3}, Ldou;->a(Ljava/lang/StringBuilder;I[Ldpj;)V

    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "}\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a(Ljava/lang/StringBuilder;I[Ldpj;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, "param {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    iget-object v5, v3, Ldpj;->a:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "string_value"

    iget-object v5, v3, Ldpj;->b:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "int_value"

    iget-object v5, v3, Ldpj;->c:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "double_value"

    iget-object v3, v3, Ldpj;->e:Ljava/lang/Double;

    invoke-static {p0, v1, v4, v3}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "}\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a(Ljava/lang/StringBuilder;I[Ldpn;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, "user_property {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "set_timestamp_millis"

    iget-object v5, v3, Ldpn;->a:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "name"

    iget-object v5, v3, Ldpn;->b:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "string_value"

    iget-object v5, v3, Ldpn;->c:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "int_value"

    iget-object v5, v3, Ldpn;->d:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "double_value"

    iget-object v3, v3, Ldpn;->f:Ljava/lang/Double;

    invoke-static {p0, v1, v4, v3}, Ldou;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Ldou;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "}\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_2

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a([JI)Z
    .locals 6

    const/4 v0, 0x0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x40

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    div-int/lit8 v1, p1, 0x40

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    rem-int/lit8 v1, p1, 0x40

    shl-long/2addr v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/BitSet;)[J
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    div-int/lit8 v3, v0, 0x40

    new-array v4, v3, [J

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v2

    move v0, v1

    :goto_1
    const/16 v5, 0x40

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v2, 0x40

    add-int/2addr v5, v0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v6

    if-lt v5, v6, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    mul-int/lit8 v5, v2, 0x40

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-wide v6, v4, v2

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v4, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public static b(Ldpk;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nbatch {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldpk;->a:[Ldpl;

    if-eqz v0, :cond_2

    iget-object v2, p0, Ldpk;->a:[Ldpl;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    if-nez v4, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    invoke-static {v1, v5, v4}, Ldou;->a(Ljava/lang/StringBuilder;ILdpl;)V

    goto :goto_2

    :cond_2
    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static c([B)J
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcsp;->a(Z)V

    const-wide/16 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-lt v0, v4, :cond_1

    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static j(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static n(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x136

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r(Ljava/lang/String;)I
    .locals 1

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->E()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->D()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "utm_campaign"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "utm_source"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "utm_medium"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "gclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "campaign"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "source"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "medium"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "gclid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "utm_term"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "term"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "utm_content"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "aclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "aclid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "cp1"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "cp1"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "anid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "anid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v3, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1
.end method

.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Ldou;->q()Ldou;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ldou;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v3

    invoke-virtual {v3}, Ldkw;->z()Ldky;

    move-result-object v3

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldou;->q()Ldou;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v3}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 10
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/16 v9, 0x19

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->x()I

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_0
    if-eqz p4, :cond_9

    invoke-virtual {p0, v0}, Ldou;->f(Ljava/lang/String;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Ldou;->g(Ljava/lang/String;)I

    move-result v4

    :cond_1
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {p0, v3, v4}, Ldou;->a(Landroid/os/Bundle;I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v6

    invoke-virtual {v6}, Ldka;->A()I

    move-result v6

    invoke-virtual {p0, v0, v6, v8}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_ev"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    invoke-virtual {p0, v3, v0}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ldou;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "_ev"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Ldou;->a(Landroid/os/Bundle;I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v4

    invoke-virtual {v4}, Ldka;->A()I

    move-result v4

    invoke-virtual {p0, v0, v4, v8}, Ldou;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_ev"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ldou;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ldou;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    if-le v1, v9, :cond_6

    const/16 v4, 0x30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Event can\'t contain more then "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " params"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v6

    invoke-virtual {v6}, Ldkw;->x()Ldky;

    move-result-object v6

    invoke-virtual {v6, v4, p1, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Ldou;->a(Landroid/os/Bundle;I)Z

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    move-object v0, v3

    :cond_8
    return-object v0

    :cond_9
    move v4, v2

    goto/16 :goto_1

    :cond_a
    move v4, v2

    goto/16 :goto_2
.end method

.method a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    array-length v3, p1

    invoke-virtual {v2, p1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcsc; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v3, "Failed to load parcelable from buffer"

    invoke-virtual {v0, v3}, Ldky;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ldou;->q()Ldou;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldou;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Invalid conditional property event name"

    invoke-virtual {v0, v1, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    const-string v1, "_o"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_o"

    invoke-static {v1}, Lcvp;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Ldou;->q()Ldou;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, p7}, Ldou;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p6, :cond_3

    invoke-virtual {p0, v0}, Ldou;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected a()V
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->z()Ldky;

    move-result-object v2

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v2, v3}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Ldou;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ldou;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 4

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_el"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_4

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->A()Ldky;

    move-result-object v1

    const-string v2, "Not putting event parameter. Invalid value type. name, type"

    invoke-virtual {v1, v2, p2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ldpj;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Ldpj;->b:Ljava/lang/String;

    iput-object v0, p1, Ldpj;->c:Ljava/lang/Long;

    iput-object v0, p1, Ldpj;->e:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Ldpj;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Ldpj;->c:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Ldpj;->e:Ljava/lang/Double;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) event param value"

    invoke-virtual {v0, v1, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ldpn;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Ldpn;->c:Ljava/lang/String;

    iput-object v0, p1, Ldpn;->d:Ljava/lang/Long;

    iput-object v0, p1, Ldpn;->f:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Ldpn;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Ldpn;->d:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Ldpn;->f:Ljava/lang/Double;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) user attribute value"

    invoke-virtual {v0, v1, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p2}, Ldou;->a(Landroid/os/Bundle;I)Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    :cond_1
    const-string v1, "_el"

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v1, p0, Ldou;->n:Ldlv;

    invoke-virtual {v1}, Ldlv;->d()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->V()Z

    iget-object v1, p0, Ldou;->n:Ldlv;

    invoke-virtual {v1}, Ldlv;->l()Ldmw;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_err"

    invoke-virtual {v1, v2, v3, v0}, Ldmw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(JJ)Z
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ldou;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->a()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://www.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android-app://com.google.appcrawler"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "_err"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v0, "_err"

    int-to-long v2, p2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_1

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {p1}, Ldou;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "param"

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->C()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Ldou;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "param"

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->B()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Ldou;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name is required and can\'t be empty. Type"

    invoke-virtual {v1, v2, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p4, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Float;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Byte;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Short;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Double;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/String;

    if-nez v2, :cond_2

    instance-of v2, p4, Ljava/lang/Character;

    if-nez v2, :cond_2

    instance-of v2, p4, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p3, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v3, "Value is too long; discarded. Value kind, name, value length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, p1, p2, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "firebase_"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name starts with reserved prefix. Type, name"

    invoke-virtual {v1, v2, p1, p3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name is reserved. Type, name"

    invoke-virtual {v1, v2, p1, p3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Landroid/os/Parcelable;)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ldpk;)[B
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ldpk;->g()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Ldqw;->a([B)Ldqw;

    move-result-object v1

    invoke-virtual {p1, v1}, Ldpk;->a(Ldqw;)V

    invoke-virtual {v1}, Ldqw;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize batch"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to gzip content"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x2

    const-string v1, "event"

    invoke-virtual {p0, v1, p1}, Ldou;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "event"

    sget-object v2, Legf;->a:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0xd

    goto :goto_0

    :cond_2
    const-string v1, "event"

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->y()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Ldou;->e()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "MD5"

    invoke-static {v5}, Ldou;->j(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Could not get MD5 instance"

    invoke-virtual {v2, v3}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_0
    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ldou;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v4

    invoke-virtual {p0}, Ldou;->n()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v4, v6, v7}, Ldgk;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-lez v6, :cond_1

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Ldou;->c([B)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v4

    invoke-virtual {v4}, Ldkw;->z()Ldky;

    move-result-object v4

    const-string v5, "Could not get signatures"

    invoke-virtual {v4, v5}, Ldky;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v4, "Package name not found"

    invoke-virtual {v1, v4, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "_ev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->C()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ldou;->a(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ldou;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->C()I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Ldou;->a(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->B()I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Ldmu;->b()V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/16 v5, 0x5f

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name is required and can\'t be empty. Type"

    invoke-virtual {v1, v2, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v5, :cond_2

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    if-eq v3, v5, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b([B)[B
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to ungzip content"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x2

    const-string v1, "event"

    invoke-virtual {p0, v1, p1}, Ldou;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "event"

    sget-object v2, Legf;->a:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0xd

    goto :goto_0

    :cond_2
    const-string v1, "event"

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->y()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user property referrer"

    invoke-direct {p0, p1}, Ldou;->r(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Ldou;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const-string v0, "user property"

    invoke-direct {p0, p1}, Ldou;->r(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Ldou;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_1
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Ldmu;->c()V

    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string v0, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p2, v2}, Ldgk;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Error obtaining certificate"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Package name not found"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x6

    const-string v1, "user property"

    invoke-virtual {p0, v1, p1}, Ldou;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "user property"

    sget-object v2, Legl;->a:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0xf

    goto :goto_0

    :cond_2
    const-string v1, "user property"

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->z()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d([B)J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ldou;->e()V

    const-string v0, "MD5"

    invoke-static {v0}, Ldou;->j(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Failed to get MD5"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Ldou;->c([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ldou;->r(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ldou;->a(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Ldou;->r(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Ldou;->a(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Ldmu;->d()V

    return-void
.end method

.method public e(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x6

    const-string v1, "user property"

    invoke-virtual {p0, v1, p1}, Ldou;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "user property"

    sget-object v2, Legl;->a:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0xf

    goto :goto_0

    :cond_2
    const-string v1, "user property"

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->z()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Ldmu;->e()V

    return-void
.end method

.method public f(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x3

    const-string v1, "event param"

    invoke-virtual {p0, v1, p1}, Ldou;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "event param"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    const-string v1, "event param"

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->A()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic f()Ldjs;
    .locals 1

    invoke-super {p0}, Ldmu;->f()Ldjs;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x3

    const-string v1, "event param"

    invoke-virtual {p0, v1, p1}, Ldou;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "event param"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    const-string v1, "event param"

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->A()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Ldou;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic g()Ldjy;
    .locals 1

    invoke-super {p0}, Ldmu;->g()Ldjy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ldmw;
    .locals 1

    invoke-super {p0}, Ldmu;->h()Ldmw;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ldou;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    invoke-virtual {v1, v2, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic i()Ldks;
    .locals 1

    invoke-super {p0}, Ldmu;->i()Ldks;

    move-result-object v0

    return-object v0
.end method

.method i(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^1:\\d+:android:[a-f0-9]+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Ldkh;
    .locals 1

    invoke-super {p0}, Ldmu;->j()Ldkh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ldno;
    .locals 1

    invoke-super {p0}, Ldmu;->k()Ldno;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldou;->e()V

    invoke-virtual {p0}, Ldou;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldgl;->b(Landroid/content/Context;)Ldgk;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldgk;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ldou;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic l()Ldnk;
    .locals 1

    invoke-super {p0}, Ldmu;->l()Ldnk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Lcvo;
    .locals 1

    invoke-super {p0}, Ldmu;->m()Lcvo;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->au()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ldou;->w()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->V()Z

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic n()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Ldmu;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ldkt;
    .locals 1

    invoke-super {p0}, Ldmu;->o()Ldkt;

    move-result-object v0

    return-object v0
.end method

.method o(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "1"

    invoke-virtual {p0}, Ldou;->r()Ldlp;

    move-result-object v1

    const-string v2, "measurement.upload.blacklist_internal"

    invoke-virtual {v1, p1, v2}, Ldlp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic p()Ldkb;
    .locals 1

    invoke-super {p0}, Ldmu;->p()Ldkb;

    move-result-object v0

    return-object v0
.end method

.method p(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "1"

    invoke-virtual {p0}, Ldou;->r()Ldlp;

    move-result-object v1

    const-string v2, "measurement.upload.blacklist_public"

    invoke-virtual {v1, p1, v2}, Ldlp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic q()Ldou;
    .locals 1

    invoke-super {p0}, Ldmu;->q()Ldou;

    move-result-object v0

    return-object v0
.end method

.method q(Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :pswitch_0
    return v0

    :sswitch_0
    const-string v3, "_in"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "_ui"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "_ug"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x171c4 -> :sswitch_0
        0x17331 -> :sswitch_2
        0x17333 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic r()Ldlp;
    .locals 1

    invoke-super {p0}, Ldmu;->r()Ldlp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Ldok;
    .locals 1

    invoke-super {p0}, Ldmu;->s()Ldok;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ldlq;
    .locals 1

    invoke-super {p0}, Ldmu;->t()Ldlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ldkw;
    .locals 1

    invoke-super {p0}, Ldmu;->u()Ldkw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ldlh;
    .locals 1

    invoke-super {p0}, Ldmu;->v()Ldlh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ldka;
    .locals 1

    invoke-super {p0}, Ldmu;->w()Ldka;

    move-result-object v0

    return-object v0
.end method

.method public x()J
    .locals 8

    iget-object v0, p0, Ldou;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v2, p0, Ldou;->a:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Ldou;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->a()J

    move-result-wide v6

    xor-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v3, p0, Ldou;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ldou;->b:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    monitor-exit v2

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v2, p0, Ldou;->a:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Ldou;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iget-object v0, p0, Ldou;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
